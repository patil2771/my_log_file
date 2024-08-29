# my_log_file
Attempt to make the log monitoring process Automated 

Purpose
This script is designed to monitor a specified log file for critical keywords such as "ERROR," "WARNING," and "CRITICAL." It continuously checks the log file in real-time, immediately alerting the user when any of these keywords are detected. This is particularly useful for system administrators and developers who need to track and respond to important log events promptly.

Functionality
Log File Monitoring: The script continuously monitors a specified log file for new entries containing predefined keywords.
Keyword Detection: It searches for occurrences of keywords like "ERROR," "WARNING," and "CRITICAL" within each line of the log file.
Real-Time Alerts: When a keyword is detected, the script generates an immediate alert, printing the relevant log line to the console.
Log File Rotation Handling: The script uses tail -F to ensure continuous monitoring even if the log file is rotated or recreated.
This script is a practical solution for maintaining visibility into critical log events and can be easily extended to perform additional actions such as sending notifications or emails when specific log entries are detected.









