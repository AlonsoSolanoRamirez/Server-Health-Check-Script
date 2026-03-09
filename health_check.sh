#!/bin/bash

LOG_FILE="/workspaces/Server-Health-Check-Script/server-health-check-script/logs/health_check.log"

echo "Starting system health check..." >> $LOG_FILE

check_cpu() {

cpu=$(top -bn1 | grep "Cpu" | awk '{print 100 - $8}')
cpu=${cpu%.*}

if [ "$cpu" -gt 80 ]; then
    echo "$(date) - High CPU usage: $cpu%" >> $LOG_FILE
else
    echo "$(date) - CPU usage normal: $cpu%" >> $LOG_FILE
fi

}

check_memory() {

mem=$(free | awk '/Mem:/ {print $3/$2 * 100}')
mem=${mem%.*}

if [ "$mem" -gt 80 ]; then
    echo "$(date) - High memory usage: $mem%" >> $LOG_FILE
else
    echo "$(date) - Memory usage normal: $mem%" >> $LOG_FILE
fi

}

check_disk() {

disk=$(df / | awk 'END {print $5}' | tr -d '%')

if [ "$disk" -gt 80 ]; then
    echo "$(date) - High disk usage: $disk%" >> $LOG_FILE
else
    echo "$(date) - Disk usage normal: $disk%" >> $LOG_FILE
fi

}

check_services() {

for service in ssh cron
do

if ps aux | grep -v grep | grep $service > /dev/null
then
    echo "$(date) - $service is running" >> $LOG_FILE
else
    echo "$(date) - ALERT: $service is not running" >> $LOG_FILE
fi

done

}

check_cpu
check_memory
check_disk
check_services

echo "Health check finished." >> $LOG_FILE
