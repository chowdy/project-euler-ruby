#include <stdio.h>
#include "../lib/pe.h"

int main(int argc, char** argv) {

  // Wow, unsigned long longs is looooong.
  unsigned long long num = 600851475143ULL;

  // Divide num by numbers that evenly divide it.
  // At some point, num cannot be divided evenly anymore, leaving
  // the largest prime factor of num.
  for (unsigned long long i = 1ULL; i < num; i++) {
    if (num % i == 0) {
      num /= i;
    }
  }

  printf("%llu\n", num);

  return 0;
}
