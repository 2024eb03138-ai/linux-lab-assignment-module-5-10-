Command: mkdir q5_test
Explanation: A separate working directory was created to perform directory comparison safely.

Command: mkdir dirA dirB
Explanation: Two directories were created to simulate directory comparison.

Command: echo "Hello World" > dirA/common_same.txt
Explanation: A file with identical content was created in dirA for comparison testing.

Command: echo "Different content A" > dirA/common_diff.txt
Explanation: A file with unique content was created in dirA to test content mismatch.

Command: echo "Only in A" > dirA/onlyA.txt
Explanation: A file exclusive to dirA was created.

Command: echo "Hello World" > dirB/common_same.txt
Explanation: A file with matching content was created in dirB.

Command: echo "Different content B" > dirB/common_diff.txt
Explanation: A file with different content but same name was created in dirB.

Command: echo "Only in B" > dirB/onlyB.txt
Explanation: A file exclusive to dirB was created.

Command: chmod +x sync.sh
Explanation: Execute permission was granted to the script.

Command: ./sync.sh
Explanation: The script compared both directories, listed unique files, and verified file content using cmp.
