#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>

void handle_sigterm(int sig) {
    printf("Parent received SIGTERM. Cleaning up and exiting gracefully.\n");
    exit(0);
}

void handle_sigint(int sig) {
    printf("Parent received SIGINT. Performing alternate cleanup.\n");
}

int main() {
    pid_t pid1, pid2;

    signal(SIGTERM, handle_sigterm);
    signal(SIGINT, handle_sigint);

    printf("Parent running with PID: %d\n", getpid());

    pid1 = fork();
    if (pid1 == 0) {
        sleep(5);
        kill(getppid(), SIGTERM);
        exit(0);
    }

    pid2 = fork();
    if (pid2 == 0) {
        sleep(10);
        kill(getppid(), SIGINT);
        exit(0);
    }

    while (1) {
        pause();
    }

    return 0;
}
