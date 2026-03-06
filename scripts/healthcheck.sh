#!/usr/bin/env bash
set -euo pipefail

echo "Running DevOps system health check..."

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
if command -v free >/dev/null 2>&1; then
  free -m
else
  echo "Memory tool not available"
fi

echo ""
echo "Top Running Processes:"
ps aux --sort=-%cpu | head -n 10

echo ""
echo "Health check complete."
