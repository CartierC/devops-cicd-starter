# DevOps CI/CD Starter

[![Code Linting](https://github.com/CartierC/devops-cicd-starter/actions/workflows/lint.yml/badge.svg)](https://github.com/CartierC/devops-cicd-starter/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-green)](https://github.com/CartierC/devops-cicd-starter/releases/tag/v1.0.0)
[![Level: Entry-Level](https://img.shields.io/badge/Level-Entry--Level-yellow)](README.md)

A practical DevOps CI/CD starter project demonstrating GitHub Actions automation, Bash scripting, system health checks, and operational reporting.

This repository is designed as a portfolio asset for cloud, DevOps, automation, and infrastructure support roles. It shows how a simple CI/CD pipeline can validate scripts, run operational checks, and preserve output evidence for review.

---

## Table of Contents

* [Purpose](#purpose)
* [What This Project Demonstrates](#what-this-project-demonstrates)
* [Architecture](#architecture)
* [Pipeline Flow](#pipeline-flow)
* [Project Structure](#project-structure)
* [Quick Start](#quick-start)
* [Running Locally](#running-locally)
* [GitHub Actions Workflow](#github-actions-workflow)
* [Real-World Use Cases](#real-world-use-cases)
* [Extension Roadmap](#extension-roadmap)
* [Recruiter Review Guide](#recruiter-review-guide)
* [Contributing](#contributing)
* [License](#license)

---

## Purpose

The purpose of this project is to provide a clean, beginner-friendly CI/CD reference implementation using:

* GitHub Actions
* Bash automation
* System health checks
* Report output artifacts
* A documented pipeline pattern

It is intentionally small, readable, and expandable.

---

## What This Project Demonstrates

| Capability               | Demonstrated Through                    |
| ------------------------ | ---------------------------------------- |
| CI/CD fundamentals       | GitHub Actions workflow (`lint.yml`)     |
| Automation scripting     | Bash script in `scripts/`                |
| Operational visibility   | Health check report output               |
| Documentation discipline | README, changelog, contribution guide    |
| Release discipline       | Semantic versioning and GitHub releases  |

---

## Architecture

```text
┌─────────────────────────────────────────────────────┐
│              Developer Pushes Code                  │
└────────────────────┬────────────────────────────────┘
                      │
                      ▼
┌─────────────────────────────────────────────────────┐
│            GitHub Actions Workflow Starts            │
└────────────────────┬────────────────────────────────┘
                      │
                      ▼
                ┌──────────────┐
                │ Code Linting │
                └──────┬───────┘
                       │
                       ▼
                ┌────────────────┐
                │ Pass or Fail?  │
                └───────┬────────┘
                        │
              ┌─────────┴─────────┐
              ▼                   ▼
        ┌──────────┐        ┌──────────────┐
        │ Continue │        │ Block Change │
        └────┬─────┘        └──────────────┘
             │
             ▼
┌─────────────────────────────────────────────────────┐
│        Report Output Preserved for Review            │
└─────────────────────────────────────────────────────┘
```

---

## Pipeline Flow

1. A developer pushes code or opens a pull request.
2. GitHub Actions starts the workflow defined in `.github/workflows/lint.yml`.
3. The workflow runs a code linting step.
4. The pipeline passes or fails based on the result.
5. The health check script can be run locally (or wired into CI) to validate operational readiness.
6. Output is preserved in `reports/` as evidence of execution.

Core pattern:

```text
Validate early → Fail fast → Preserve evidence → Improve reliability
```

---

## Project Structure

```text
devops-cicd-starter/
├── .github/
│   └── workflows/
│       └── lint.yml                 # GitHub Actions linting workflow
├── scripts/
│   └── healthcheck.sh               # System health check automation
├── reports/
│   └── healthcheck-output.txt       # Sample health check output
├── README.md                        # Main project documentation
├── CONTRIBUTING.md                  # Contribution guidelines
├── CHANGELOG.md                     # Release history
├── RELEASE_NOTES.md                 # Release notes for v1.0.0
└── LICENSE                          # MIT License
```

---

## Quick Start

Clone the repository:

```bash
git clone https://github.com/CartierC/devops-cicd-starter.git
cd devops-cicd-starter
```

Make the script executable:

```bash
chmod +x scripts/healthcheck.sh
```

Run the health check:

```bash
bash scripts/healthcheck.sh
```

View the sample output:

```bash
cat reports/healthcheck-output.txt
```

---

## Running Locally

Run ShellCheck against the script (if installed):

```bash
shellcheck scripts/healthcheck.sh
```

Run the health check and inspect the result:

```bash
bash scripts/healthcheck.sh
cat reports/healthcheck-output.txt
```

---

## GitHub Actions Workflow

The workflow is located at:

```text
.github/workflows/lint.yml
```

It currently runs on every push and performs a code linting step. As the project grows, this workflow can be extended to run ShellCheck against `scripts/healthcheck.sh` and execute the health check as part of CI.

---

## Real-World Use Cases

### 1. Cloud Support Engineering

This project mirrors automation used to check systems before escalation or deployment.

Examples:

* Run system checks
* Preserve troubleshooting evidence
* Reduce repeated manual checks

### 2. DevOps CI/CD Foundations

This project demonstrates how teams prevent bad changes from moving forward.

Examples:

* Validate changes before merge
* Standardize repeatable checks
* Use GitHub Actions as a quality gate

### 3. Infrastructure Automation

This repo can be extended into infrastructure automation workflows.

Possible additions:

* Terraform validation
* AWS CLI checks
* Docker image scanning
* Deployment gates
* CloudWatch integration

---

## Extension Roadmap

* [ ] Run ShellCheck against `scripts/healthcheck.sh` in CI
* [ ] Add a deployment script and pipeline stage
* [ ] Add a configuration validation script
* [ ] Add Terraform validation
* [ ] Add AWS CLI environment checks
* [ ] Add Docker build and scan workflow
* [ ] Add unit tests
* [ ] Add Slack or Teams notifications
* [ ] Add deployment approval gates
* [ ] Add artifact upload in GitHub Actions
* [ ] Add security scanning with Trivy or Snyk
* [ ] Add multi-environment promotion workflow

---

## Recruiter Review Guide

| Review Area           | Where to Look                           |
| ---------------------- | ---------------------------------------- |
| CI/CD understanding    | `.github/workflows/lint.yml`             |
| Bash automation        | `scripts/healthcheck.sh`                 |
| Operational thinking   | `scripts/healthcheck.sh` and `reports/`  |
| Documentation quality  | `README.md`, `CHANGELOG.md`              |
| Professional workflow  | Pull requests, releases, commit history  |
| Growth path            | Roadmap and extension sections           |

This project is not meant to be a massive production system. It is meant to show DevOps fundamentals, structured documentation, and the ability to build a reliable automation foundation.

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

Basic contribution flow:

```bash
git checkout -b feature/example-improvement
shellcheck scripts/healthcheck.sh
git add .
git commit -m "feat: add example improvement"
git push origin feature/example-improvement
```

Then open a pull request.

---

## License

This project is licensed under the MIT License.

See [LICENSE](LICENSE) for details.

---

## Author

Built by **CartierC** as a cloud automation and DevOps portfolio project.

* GitHub: [https://github.com/CartierC](https://github.com/CartierC)
* Repository: [https://github.com/CartierC/devops-cicd-starter](https://github.com/CartierC/devops-cicd-starter)
