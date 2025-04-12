#include <stdio.h>

#define ONE 2

void print_one(){
  #ifdef ONE
    printf("%u", ONE);
  #else
    printf("Ena ni definirana");
  #endif
}

int main() {
  print_one();
  return 0;
}
