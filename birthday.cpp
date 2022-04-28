#include <atomic>
#include <chrono>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <thread>
#include <vector>

using namespace std;

class Random {
private:
  uint32_t seed;

public:
  Random() : Random(1) {}
  Random(uint32_t seed) : seed(seed) {}
  uint32_t operator()(uint32_t range) {
    uint32_t temp = seed;
    temp ^= temp << 13;
    temp ^= temp >> 17;
    temp ^= temp << 5;
    return (seed = temp) % range;
  }
  void split(Random randoms[], int n) {
    for (int i = 0; i < n; i++) {
      randoms[i] = Random(seed + 31 * i);
    }
  }
};

class alignas(16) UsedBirthdays {
private:
  bool usedBirthdays[384];

public:
  UsedBirthdays() { clear(); }
  void add(int birthday) { usedBirthdays[birthday] = true; }
  bool isUsed(int birthday) { return usedBirthdays[birthday]; }
  void clear() { memset(usedBirthdays, 0, sizeof(usedBirthdays)); }
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

#define NUM_RANDS 64

void workerFunction(Worker *context) {
  int repetitions = context->repetitions;
  atomic_int *externalIntersectionCounts = context->intersectionCounts;
  int intersectionCounts[MAX_PEOPLE + 1] = {0};
  Random primaryRand(chrono::system_clock::now().time_since_epoch().count());
  Random rands[NUM_RANDS];
  primaryRand.split(rands, NUM_RANDS);
  int randomBirthdays[NUM_RANDS];
  int nextBirthdayIndex = NUM_RANDS;
  for (int people = 2; people <= MAX_PEOPLE; people++) {
    for (int repetition = repetitions; repetition > 0; repetition--) {
      UsedBirthdays usedBirthdays;
      for (int person = 0; person < people; person++) {
        if (nextBirthdayIndex == NUM_RANDS) {
          nextBirthdayIndex = 0;
          for (int i = 0; i < NUM_RANDS; i++) {
            randomBirthdays[i] = rands[i](365);
          }
        }
        int birthday = randomBirthdays[nextBirthdayIndex];
        nextBirthdayIndex++;
        if (usedBirthdays.isUsed(birthday)) {
          intersectionCounts[people]++;
          break;
        } else {
          usedBirthdays.add(birthday);
        }
      }
    }
  }
  for (int i = 2; i <= MAX_PEOPLE; i++) {
    externalIntersectionCounts[i] += intersectionCounts[i];
  }
}
