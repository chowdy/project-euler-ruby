#include <stdio.h>

void main() {
  int answer = 0;

  for (int i = 3; i < 1000; i++)
  {
    if (i % 3 == 0 || i % 5 == 0)
    {
      answer += i;
    }
  }

  printf("%d\n", answer);
}
