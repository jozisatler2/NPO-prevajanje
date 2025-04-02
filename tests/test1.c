#include <stdio.h>
#include <stdlib.h>

int main() {

    int status = system("../demo_gcc > /dev/null 2>&1");
    if (status != 0) {
        printf("Program se ni pravilno zagnal\n");
    }
    
}