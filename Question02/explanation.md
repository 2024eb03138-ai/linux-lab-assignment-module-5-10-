Command: mkdir q2_test
Explanation: A new directory was created to perform all testing related to Question 2 separately.

Command: nano logs.txt
Explanation: A log file was created locally containing INFO, WARNING, and ERROR entries in the required format.

Command: nano log_analyzer.sh
Explanation: The Question 2 shell script was written locally to analyze the log file.

Command: chmod +x log_analyzer.sh
Explanation: Execute permission was provided so the log analyzer script could be run as a program.

Command: ./log_analyzer.sh logs.txt
Explanation: The script analyzed the log file, counted total log entries and log levels, identified the most recent ERROR message, and generated a dated summary report file.

Command: ls
Explanation: The directory contents were listed to confirm that the summary report file was created.

Command: cat logsummary_*.txt
Explanation: The generated log summary report file was displayed to verify the analysis results.
