# System Check Script

A bash script that collects basic system information and saves it to a log file with a timestamp.

## What it does

Each time the script runs, it collects:
- **CPU usage** – current processes and CPU load via `top`
- **Memory usage** – RAM usage in MB via `free`
- **Disk usage** – disk space usage via `df`
- **System uptime** – how long the system has been running via `uptime`

All output is saved to a new `.txt` file in the `~/logs` folder. Each run creates a separate file so no data is overwritten.

## Requirements

- Linux / macOS
- Bash
- `~/logs` directory must exist before running the script

## Setup

1. Clone the repository:
```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

2. Create the logs directory:
```bash
mkdir -p ~/logs
```

3. Make the script executable:
```bash
chmod +x system_check.sh
```

## Usage

```bash
./system_check.sh
```

After running, a new log file will be created in `~/logs/` with the following naming format:

```
check_2026-06-28_14-30-15.txt
```

## Log file location

```
~/logs/check_YYYY-MM-DD_HH-MM-SS.txt
```

## Example output inside log file

```
CPU Usage:
=======================
=======================
top - 14:30:15 up 2 days ...

Memory Usage:
=======================
=======================
              total        used        free
Mem:          16042        8321        7721

Disk Usage:
=======================
=======================
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   30G  40% /

System Uptime:
=======================
=======================
up 2 days, 3 hours, 15 minutes
```
