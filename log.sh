#!/bin/bash

# Log file to monitor
LOG_FILE="/c/Repo_1/dumy.log"  # Change this to your dummy log file path

# Keywords to monitor
KEYWORDS=("ERROR" "WARNING" "CRITICAL")

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file $LOG_FILE does not exist."
    exit 1
fi

# Monitor the log file
tail -Fn0 "$LOG_FILE" | while read -r LINE
do
    for KEYWORD in "${KEYWORDS[@]}"
    do
        if [[ "$LINE" == *"$KEYWORD"* ]]; then
            echo "Alert: Found '$KEYWORD' in log: $LINE"
        fi
    done
done

