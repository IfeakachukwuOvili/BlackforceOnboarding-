# Branching Convention

This document defines the Git branching and commit message conventions used on the Blackforce platform.

---

## Branch Naming

All branches must follow this pattern:

```
<type>/<short-description>
```

Where `<short-description>` is lowercase, hyphen-separated, and ≤ 50 characters.

| Type | Purpose | Example |
|------|---------|---------|
| `feature/` | New functionality | `feature/add-jwt-auth` |
| `fix/` | Bug fixes | `fix/null-pointer-in-user-service` |
| `chore/` | Maintenance, deps, refactors | `chore/upgrade-node-18` |
| `docs/` | Documentation only | `docs/update-onboarding-readme` |
| `test/` | Test additions or fixes | `test/add-integration-tests` |

### Rules

- **Never push directly to `main`** — always open a Pull Request
- Branches should be short-lived; merge and delete once the PR is merged
- Keep branch names descriptive but concise

---

## Commit Message Format

We follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/):

```
<type>(<scope>): <short summary>

[optional body — explain WHY, not WHAT]

[optional footer — references, breaking changes]
```

### Types

| Type | When to use |
|------|-------------|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation changes |
| `style` | Formatting, no logic change |
| `refactor` | Code restructure, no feature or fix |
| `test` | Adding or updating tests |
| `chore` | Maintenance tasks |

### Examples

```
feat(auth): add refresh token endpoint

Adds POST /auth/refresh that issues a new JWT when a valid
refresh token is provided.

Closes #42
```

```
fix(api): return 404 when user is not found

Previously the service returned a 500 error when the database
returned null. Now returns a proper 404 with a clear message.
```

```
chore(deps): upgrade express from 4.18.1 to 4.18.2
```

### Rules

- Summary line: imperative mood, ≤ 72 characters, no period at the end
- Body (if included): wrap at 72 characters, explain motivation
- Reference issues with `Closes #<number>` or `Refs #<number>`

---

## Pull Requests

- PR title should mirror the commit message format
- At least **one approval** is required before merging
- All CI checks must pass before merging
- Squash-merge is preferred to keep `main` history clean
