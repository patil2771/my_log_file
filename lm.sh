#!/bin/bash

# Log file to monitor
LOG_FILE="/c/Repo_1/dumy.log"  # Adjusted for WSL or Git Bash

# Keywords to monitor
KEYWORDS=("ERROR" "WARNING" "CRITICAL")

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file $LOG_FILE does not exist."
    exit 1
fi

# Function to check the log file for the keywords
check_logs() {
    while IFS= read -r LINE
    do
        for KEYWORD in "${KEYWORDS[@]}"
        do
            if [[ "$LINE" == *"$KEYWORD"* ]]; then
                echo "Alert: Found '$KEYWORD' in log: $LINE"
            fi
        done
    done < "$LOG_FILE"
}

# Initially read the entire log file
check_logs

# Monitor the log file for new lines and check for keywords
tail -Fn0 "$LOG_FILE" | while read -r LINE
do
    for KEYWORD in "${KEYWORDS[@]}"
    do
        if [[ "$LINE" == *"$KEYWORD"* ]]; then
            echo "Alert: Found '$KEYWORD' in log: $LINE"
        fi
    done
done
