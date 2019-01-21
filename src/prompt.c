#include <stdio.h>

static char input[2048];

int main(int argc, char** argv)
{
    puts("Lispy v0.0.1");
    puts("Aperte Ctrl+c para sair\n");

    while (1) {
        fputs("$> ", stdout);
        fgets(input, 2048, stdin);

        printf("O valor digitado foi: %s", input);
    }
    return 0;
}