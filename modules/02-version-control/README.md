# Module 02 — Version Control Workflow

## Learning Objectives

By the end of this module you will be able to:

- Understand the Blackforce Git branching strategy
- Create feature branches and open pull requests
- Write clear, conventional commit messages
- Perform a code review

---

## Branching Strategy

We follow a simplified **GitHub Flow**:

```
main
 └── feature/<short-description>
 └── fix/<short-description>
 └── chore/<short-description>
```

| Prefix | When to use |
|--------|-------------|
| `feature/` | New functionality |
| `fix/` | Bug fixes |
| `chore/` | Maintenance, dependency updates, refactors |

**`main`** is always deployable. Direct pushes to `main` are disabled.

---

## Commit Message Convention

We follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <short summary>

[optional body]

[optional footer]
```

Examples:

```
feat(auth): add JWT refresh token support
fix(api): handle null response from upstream service
chore(deps): upgrade lodash to 4.17.21
```

Allowed types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

---

## Pull Request Checklist

Before requesting review, ensure:

- [ ] Branch is up to date with `main`
- [ ] All tests pass locally
- [ ] Code follows the [style guide](../../resources/code-style-guide.md)
- [ ] PR title follows Conventional Commits format
- [ ] PR description explains **what** changed and **why**

---

## Hands-on Exercise

See [`exercises/01-git-basics/`](../../exercises/01-git-basics/README.md).

---

## Next Module

➡️ [Module 03 — Platform Architecture](../03-platform-architecture/README.md)
