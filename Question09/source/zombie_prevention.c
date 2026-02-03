#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid;
    int i;
    int status;

    printf("Parent PID: %d\n", getpid());

    for (i = 0; i < 3; i++) {
        pid = fork();

        if (pid == 0) {
            // Child process
            printf("Child %d created with PID: %d\n", i + 1, getpid());
            sleep(1);
            exit(0);
        }
    }

    // Parent process waits for all children
    while ((pid = wait(&status)) > 0) {
        printf("Parent cleaned up child with PID: %d\n", pid);
    }

    printf("All child processes cleaned up. No zombies.\n");
    return 0;
}
