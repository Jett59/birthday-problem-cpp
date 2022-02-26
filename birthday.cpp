#include <atomic>
#include <chrono>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <thread>
#include <vector>

using namespace std;

class MyRandom {
private:
  uint64_t seed;

public:
  MyRandom(uint64_t seed) : seed(seed) {}
  uint64_t rand(uint64_t range) {
    uint64_t temp = seed;
    temp ^= temp << 13;
    temp ^= temp >> 7;
    temp ^= temp << 17;
    return (seed = temp) % range;
  }
};

class UsedBirthdays {
private:
  bool usedBirthdays[365];

public:
  UsedBirthdays() { clear(); }
  void add(int birthday) { usedBirthdays[birthday] = true; }
  bool isUsed(int birthday) { return usedBirthdays[birthday]; }
  void clear() { memset(usedBirthdays, 0, sizeof(usedBirthdays)); }
};
class BirthdayGenerator {
private:
  MyRandom rand;

public:
  BirthdayGenerator() : rand((uint64_t)clock() + time(nullptr)) {}
  int random() { return rand.rand(365); }
};

struct Worker {
  atomic_int *intersectionCounts;
  int repetitions;
};

void workerFunction(Worker *context);

#define TOTAL_REPETITIONS 1000000
#define MAX_PEOPLE 100

int main() {
  auto start = chrono::system_clock::now().time_since_epoch();
  int numWorkers = thread::hardware_concurrency();
  int repetitionsPerWorker = TOTAL_REPETITIONS / numWorkers;
  Worker *workerContexts = new Worker[numWorkers];
  atomic_int intersectionCounts[MAX_PEOPLE + 1];
  for (int i = 2; i <= MAX_PEOPLE; i++) {
    intersectionCounts[i] = 0;
  }
  vector<thread> workerThreads;
  workerThreads.reserve(numWorkers);
  for (int i = 0; i < numWorkers; i++) {
    Worker &worker = workerContexts[i];
    worker.intersectionCounts = intersectionCounts;
    worker.repetitions = repetitionsPerWorker;
    workerThreads.push_back(thread(workerFunction, workerContexts + i));
  }
  for (thread &workerThread : workerThreads) {
    workerThread.join();
  }
  for (int i = 2; i <= MAX_PEOPLE; i++) {
    double intersectionProbability =
        intersectionCounts[i] / (double)TOTAL_REPETITIONS;
    printf("%.2f%% for %d\n", intersectionProbability * 100, i);
  }
  delete[] workerContexts;
  auto timeTaken = chrono::system_clock::now().time_since_epoch() - start;
  printf(
      "It took %.3fs\n",
      double(chrono::duration_cast<chrono::milliseconds>(timeTaken).count()) /
          1000.0);
  return 0;
}

void workerFunction(Worker *context) {
  int repetitions = context->repetitions;
  atomic_int *intersectionCounts = context->intersectionCounts;
  BirthdayGenerator birthdayGenerator;
  for (int repetition = 0; repetition < repetitions; repetition++) {
    for (int people = 2; people <= MAX_PEOPLE; people++) {
      UsedBirthdays usedBirthdays;
      for (int person = 0; person < people; person++) {
        int birthday = birthdayGenerator.random();
        if (usedBirthdays.isUsed(birthday)) {
          intersectionCounts[people]++;
          break;
        } else {
          usedBirthdays.add(birthday);
        }
      }
    }
  }
}
