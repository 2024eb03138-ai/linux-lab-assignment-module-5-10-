Command: mkdir q1_test
Explanation: A new directory was created to perform testing of the script in an isolated environment.

Command: cd q1_test
Explanation: The working directory was changed to the newly created folder for running all test commands.

Command: echo "This is a sample file for testing analyze script" > sample.txt
Explanation: A sample text file was created to test the file analysis functionality of the script.

Command: mkdir testdir
Explanation: A directory was created to test the script’s ability to handle directory inputs.

Command: echo "hello" > testdir/a.txt
Explanation: A text file was created inside the directory to test counting of .txt files.

Command: echo "world" > testdir/b.log
Explanation: A non-text file was created to ensure the script correctly differentiates file types.

Command: nano analyze.sh
Explanation: The analyze.sh script was created locally so it could be executed and tested.

Command: chmod +x analyze.sh
Explanation: Execute permission was granted to the script so it could be run as a program.

Command: ./analyze.sh sample.txt
Explanation: The script was executed with a file argument and correctly displayed the number of lines, words, and characters.

Command: ./analyze.sh
Explanation: The script was executed without arguments and correctly displayed an error message for invalid input.
