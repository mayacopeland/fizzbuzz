#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
    if (argc > 1) {
        int count = atoi(argv[1]);

        for (int i = 1; i <= count; i++) {
            if (i % 15 == 0) {
                printf("FizzBuzz \n");
            } else if (i % 3 == 0) {
                printf("Fizz \n");
            } else if (i % 5 == 0) {
                printf("Buzz \n");
            } else {
                printf("%d \n", i);
            }
        }
    } else {
        printf("You need to supply me with an input... \n");
    }
   
    return 0;
}

