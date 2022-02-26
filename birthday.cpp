#include <atomic>
#include <cstring>
#include <ctime>
#include <iostream>
#include <random>
#include <thread>
#include <vector>

using namespace std;

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
  default_random_engine randEngine;
  uniform_int_distribution<int> rand;

public:
  BirthdayGenerator()
      : randEngine((unsigned)clock() + time(nullptr)), rand(0, 364) {}
  int random() { return rand(randEngine); }
};

struct Worker {
  atomic_int *intersectionCounts;
  int repetitions;
};

void workerFunction(Worker *context);

#define TOTAL_REPETITIONS 1000000
#define MAX_PEOPLE 100

int main() {
  clock_t start = clock();
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
  clock_t timeTaken = clock() - start;
  printf("It took %.3fs\n", double(timeTaken) / CLOCKS_PER_SEC);
  return 0;
}

void workerFunction(Worker *context) {
  int repetitions = context->repetitions;
  atomic_int *intersectionCounts = context->intersectionCounts;
  BirthdayGenerator birthdayGenerator;
  for (int people = 2; people <= MAX_PEOPLE; people++) {
    for (int repetition = 0; repetition < repetitions; repetition++) {
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
