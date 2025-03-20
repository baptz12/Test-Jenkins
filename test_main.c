// test_main.c
#include <stdio.h>

// Prototype de la fonction à tester (dans main.c)
int addition(int a, int b);

int main() {
    printf("Test 1 + 2 = %d (attendu 3)\n", addition(1, 2));
    printf("Test 5 + 5 = %d (attendu 10)\n", addition(5, 5));
    return 0;
}
