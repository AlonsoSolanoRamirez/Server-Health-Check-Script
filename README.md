# Server Health Check Script

This project is a simple system monitoring script written in Bash.

The script checks the health of a Linux system and records the results in a log file. It is designed to run automatically using cron

## Features

- Checks CPU usage
- Checks memory usage 
- Checks disk usage
- Writes results to a log file
- Runs automatically using cron

## Technologies Used

- Bash
- Cron
- Linux

## How It Works

The script "health_check.sh" runs system checks and writes the results to:

logs/health_check.log

A cron job runs the script every few minutes to continuosly monitor system health.

## Project Structure

server-health-check-script/
|
|----health_check.sh
|----README.md
|----logs/
|----.gitignore

## Author 

Created by Alonso Solano Ramirez

Github: https://github.com/AlonsoSolanoRamirez/Server-Health-Check-Script

