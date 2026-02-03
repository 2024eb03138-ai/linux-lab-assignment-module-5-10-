Question 9 – Zombie Process Prevention in C

Command: nano zombie_prevention.c
Explanation: A C program was written to create multiple child processes using fork().

Command: gcc zombie_prevention.c -o zombie_prevention
Explanation: The C program was compiled using GCC.

Command: ./zombie_prevention
Explanation: The program was executed, and the parent process successfully cleaned up all child processes using wait(), preventing zombie processes.
