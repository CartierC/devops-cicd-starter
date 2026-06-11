# Contributing to DevOps CI/CD Starter

Thank you for your interest in contributing.

This project is a beginner-friendly DevOps CI/CD reference repo focused on automation, validation, and operational reliability.

---

## Contribution Rules

Before submitting changes:

1. Use a feature branch.
2. Keep changes focused.
3. Validate shell scripts before committing.
4. Update documentation when behavior changes.
5. Use clear commit messages.

---

## Local Validation

Run ShellCheck:

```bash
shellcheck scripts/healthcheck.sh
```

Run the health check:

```bash
bash scripts/healthcheck.sh
```

---

## Pull Request Process

1. Branch from `main`.
2. Create a feature branch:

```bash
git checkout -b feature/your-change
```

3. Make changes.
4. Run local checks.
5. Commit with a clear message.
6. Push your branch.
7. Open a pull request into `main`.

---

## Commit Message Standard

Use this format:

```text
type: short description
```

Examples:

```text
feat: add terraform validation stage
fix: correct healthcheck report path
docs: update README with workflow details
chore: clean unused comments
```

Accepted types:

* `feat`
* `fix`
* `docs`
* `test`
* `refactor`
* `chore`

---

## Code Standards

Shell scripts should:

* Use clear variable names
* Avoid hardcoded secrets
* Exit safely on failure where appropriate
* Pass ShellCheck
* Include comments when logic is not obvious

---

## Issue Reports

When reporting an issue, include:

* What you ran
* What you expected
* What happened
* Your operating system
* Relevant terminal output

---

## Maintainer

Maintained by CartierC.
