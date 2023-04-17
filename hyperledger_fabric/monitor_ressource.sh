#!/bin/bash

# Get the container ID for the Caliper container
CALIPER_CONTAINER=$(docker ps --filter "name=caliper" --format "{{.ID}}")

# Monitor the resource usage of the Caliper container every second
while true; do
  docker stats --no-stream "$CALIPER_CONTAINER" >> caliper_resource_usage.log
  sleep 1
done &