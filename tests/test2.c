#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {

    FILE *fp = popen("../demo_gcc", "r");

    char output[20];
    fgets(output, sizeof(output), fp);
    pclose(fp);

    if (strcmp(output, "1") != 0) {
        printf("Program ne izpise 1!\n");
    }
}