# Server Health Check Script

A simple Bash script that monitors basic Linux Server Health Metrics.

## Features

- CPU usage monitoring
- Memory usage monitoring
- Disk usage monitoring
- Service status checks
- Logs system health results

## Technologies Used

- Bash
- Linux commmands (top, free, df, ps)
- awk

## How to Run

Wake the script executable:

chmod +x health_check.sh

Run the script:

./health_check.sh

Check Logs:

cat logs/health_check.log

## Example Output

Starting system health check...
Mon Mar  9 18:56:38 UTC 2026 - CPU usage normal: 20%
Mon Mar  9 18:56:38 UTC 2026 - Memory usage normal: 38%
Mon Mar  9 18:56:38 UTC 2026 - Disk usage normal: 32%
Mon Mar  9 18:56:38 UTC 2026 - ssh is running
Mon Mar  9 18:56:38 UTC 2026 - cron is running
Health check finished.

## Author

Alonso Solano Ramirez
