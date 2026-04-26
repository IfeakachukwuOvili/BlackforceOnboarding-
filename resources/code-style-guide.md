# Code Style Guide

This guide defines the coding standards for all Blackforce platform services.

---

## General Principles

- Write **readable** code over clever code
- Prefer **explicit** over implicit
- Keep functions **small** and focused on a single responsibility
- Always handle errors — never silently swallow them

---

## JavaScript / TypeScript

We use **TypeScript** for all new services. Existing JavaScript files should be migrated incrementally.

### Formatting

- **Formatter**: [Prettier](https://prettier.io/) with the default config
- **Indentation**: 2 spaces
- **Quotes**: single quotes (`'`)
- **Semicolons**: required
- **Max line length**: 100 characters

Run the formatter:

```bash
npx prettier --write "src/**/*.ts"
```

### Linting

We use [ESLint](https://eslint.org/) with the `@typescript-eslint` ruleset.

Run the linter:

```bash
npx eslint "src/**/*.ts"
```

Fix auto-fixable issues:

```bash
npx eslint "src/**/*.ts" --fix
```

### Naming Conventions

| Construct | Convention | Example |
|-----------|-----------|---------|
| Variables | `camelCase` | `userId` |
| Constants | `UPPER_SNAKE_CASE` | `MAX_RETRIES` |
| Functions | `camelCase` | `getUserById` |
| Classes | `PascalCase` | `UserService` |
| Interfaces / Types | `PascalCase` | `UserProfile` |
| Files | `kebab-case` | `user-service.ts` |

### Error Handling

```typescript
// ✅ Good — always handle or propagate errors
try {
  const user = await db.findUser(id);
  return user;
} catch (error) {
  logger.error({ error, userId: id }, 'Failed to fetch user');
  throw error;
}

// ❌ Bad — silently swallowing errors
try {
  const user = await db.findUser(id);
  return user;
} catch (_) {}
```

---

## Git Commit Messages

See [branching-convention.md](branching-convention.md) for commit message rules.

---

## Comments

- Write comments to explain **why**, not **what**
- Use JSDoc for all exported functions and classes

```typescript
/**
 * Returns the user with the given ID, or null if not found.
 *
 * @param id - The unique user identifier
 */
export async function getUserById(id: string): Promise<User | null> { ... }
```
