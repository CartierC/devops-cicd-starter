#!/bin/bash

echo "Running DevOps system health check..."

echo "Checking disk usage..."
df -h

echo "Checking memory usage..."
free -m

echo "Checking running services..."
systemctl list-units --type=service --state=running | head

echo "Health check complete."