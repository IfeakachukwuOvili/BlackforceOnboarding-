# Module 04 — Building & Testing Services

## Learning Objectives

By the end of this module you will be able to:

- Run the build pipeline for a service
- Write and run unit tests
- Write and run integration tests
- Understand test coverage expectations

---

## Running a Build

From the root of a service directory:

```bash
npm install       # install dependencies
npm run build     # compile TypeScript / bundle assets
```

A successful build produces output in the `dist/` directory.

---

## Testing

We use **Jest** as our test runner across all Node.js services.

### Unit Tests

Unit tests live next to the source file they test:

```
src/
├── utils/
│   ├── formatDate.ts
│   └── formatDate.test.ts   ← unit test
```

Run unit tests:

```bash
npm test                  # run all tests
npm test -- --watch       # watch mode
npm test -- --coverage    # with coverage report
```

### Integration Tests

Integration tests live in `tests/integration/` and may require a running database or other services (use Docker Compose):

```bash
docker compose up -d       # start dependencies
npm run test:integration   # run integration tests
docker compose down        # tear down
```

---

## Coverage Requirements

| Type | Minimum Coverage |
|------|-----------------|
| Unit | 80% |
| Integration | Key happy paths + main error paths |

---

## Writing a Test (Example)

```typescript
// src/utils/add.test.ts
import { add } from './add';

describe('add', () => {
  it('returns the sum of two numbers', () => {
    expect(add(2, 3)).toBe(5);
  });

  it('handles negative numbers', () => {
    expect(add(-1, 1)).toBe(0);
  });
});
```

---

## Hands-on Exercise

See [`exercises/03-write-your-tests/`](../../exercises/03-write-your-tests/README.md).

---

## Next Module

➡️ [Module 05 — Deployment Basics](../05-deployment/README.md)
