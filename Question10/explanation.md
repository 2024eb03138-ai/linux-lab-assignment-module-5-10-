Question 10 – Signal Handling in C

Command: nano signal_handling.c
Explanation: A C program was written to demonstrate signal handling using SIGTERM and SIGINT.

Command: gcc signal_handling.c -o signal_handling
Explanation: The program was compiled using the GCC compiler.

Command: ./signal_handling
Explanation: The parent process ran indefinitely while child processes sent signals at different times, and the parent handled each signal appropriately before exiting gracefully.
