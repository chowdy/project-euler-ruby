#include <stdio.h>
#define TRUE 1
#define FALSE 1

int main() {

  // Iterative fibonacci
  int i_2 = 0;
  int i_1 = 1;
  int i = i_2 + i_1;

  int sumOfEvenFibonacciNumbers = 0;

  while (TRUE) {
    i_2 = i_1;
    i_1 = i;
    i = i_2 + i_1;

    if(i > 4000000) {
      break;
    }

    if (i % 2 == 0) {
      sumOfEvenFibonacciNumbers += i;
    }
  }

  printf("%d\n", sumOfEvenFibonacciNumbers);

  return 0;
}
