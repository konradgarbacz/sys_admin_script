#!/bin/bash

#variables
LOG_DIR="$HOME/logs"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="$LOG_DIR/check_$TIMESTAMP.txt"
exec >> "$LOG_FILE" 2>&1

CPU_USAGE=$(top -bn1)
MEMORY_USAGE=$(free -m)
DISK_USAGE=$(df -h)
UPTIME=$(uptime -p)



#cpu usage
echo "CPU Usage:"
echo "======================="
echo "======================="
echo "$CPU_USAGE"
#memory usage
echo "Memory Usage:"
echo "======================="
echo "======================="
echo "$MEMORY_USAGE"
#disk usage
echo "Disk Usage:"
echo "======================="
echo "======================="
echo "$DISK_USAGE"
#system uptime
echo "System Uptime:"
echo "======================="
echo "======================="
echo "$UPTIME"

#terminal output information
echo "Check complete, file has been saved to $LOG_DIR" > /dev/tty