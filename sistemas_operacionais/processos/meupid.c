#include <stdio.h>
#include <unistd.h>

int main(int argc, const char *argv[])
{
    printf("Eu sou o processo %d, meu pai � o processo %d, e o grupo � o %d\n", getpid(), getppid(), getpgrp());

    return 0;
}
