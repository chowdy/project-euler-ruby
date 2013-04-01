#include "pe.h"
#include <stdio.h>
#include <string.h>

#define NOT_PRIME 1
#define PRIME 0
#define MASK 0x80

static void initializePrimes();
static int getBitForNumber(int number);

// A bit array to represent the sieve's list of numbers.
// It is 0 at indexes of prime numbers, and 1 at nonprimes.
int SIEVE_SIZE = MAX_PRIMES_SIEVE / 8 + 1;
unsigned char primesSieve[MAX_PRIMES_SIEVE / 8 + 1];

int isPrime(int number) {

  // This should be PRIME, since 2 is a prime number.
  if (getBitForNumber(4) == PRIME) {
    printf("initializePrimes!\n");
    initializePrimes();
  }

  return getBitForNumber(number) == PRIME;
}

static int getBitForNumber(int number) {
  return ((MASK>>(number%8)) & primesSieve[number / 8]) > 0;
}

static void setBitForNumber(int number) {
  primesSieve[number / 8] = (MASK>>(number%8)) | primesSieve[number / 8];
}

static void initializePrimes() {

  //void *memset(void *s, int c, size_t n);
  memset (primesSieve, 0x0A, 1);
  memset (primesSieve + 1, 0xAAAAAAAA, MAX_PRIMES_SIEVE / 8);

  // 0 and 1 are not prime.
  setBitForNumber(0);
  setBitForNumber(1);

  for (int i = 3; i < MAX_PRIMES_SIEVE; i++) {
    printf("i=%d\n", i);
    if (getBitForNumber(i) == PRIME) {
      for (int j = i + i; j < MAX_PRIMES_SIEVE; j += i) {
        setBitForNumber(j);
      }
    }
  }

}
