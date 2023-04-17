#!/bin/bash

# Get the PID of the monitor_resources.sh script
PID=$(ps aux | grep '[m]onitor_resources.sh' | awk '{print $2}')

# Check if the PID exists
if [ -z "$PID" ]
then
  echo "monitor_resources.sh is not running"
else
  # Kill the process associated with the PID
  kill $PID
  echo "monitor_resources.sh has been stopped"
fi
