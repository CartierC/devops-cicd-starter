# DevOps CI/CD Starter

This repository demonstrates a basic DevOps CI/CD pipeline using GitHub Actions.

## Features

- Automated CI pipeline using GitHub Actions
- Shell script validation using ShellCheck
- System health check automation script

## Project Structure
.github/workflows/lint.yml → CI pipeline
scripts/healthcheck.sh → system health script

## Running the Health Check

Make script executable:
chmod +x scripts/healthcheck.sh

Run:
./scripts/healthcheck.sh

## CI Pipeline

Every push to the repository triggers:

- ShellCheck validation on all scripts

This ensures scripts follow best practices.
