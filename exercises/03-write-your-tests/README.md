# Exercise 03 — Write Your Tests

## Goal

Add unit tests to the service you built in Exercise 02.

---

## Instructions

### Task 1 — Install Jest

Inside `my-service/` (from Exercise 02):

- [ ] Install Jest and supertest:

  ```bash
  npm install --save-dev jest supertest
  ```

- [ ] Add a test script to `package.json`:

  ```json
  "scripts": {
    "start": "node index.js",
    "test": "jest"
  }
  ```

### Task 2 — Write Tests

- [ ] Create `my-service/index.test.js`:

  ```javascript
  const request = require('supertest');
  const app = require('./index');  // export app from index.js first (see Task 3)

  describe('GET /health', () => {
    it('returns status ok', async () => {
      const res = await request(app).get('/health');
      expect(res.statusCode).toBe(200);
      expect(res.body).toEqual({ status: 'ok', version: '1.0.0' });
    });
  });

  describe('GET /', () => {
    it('returns greeting', async () => {
      const res = await request(app).get('/');
      expect(res.statusCode).toBe(200);
      expect(res.text).toContain('Hello');
    });
  });
  ```

### Task 3 — Export the App

- [ ] Update `my-service/index.js` to export `app` so tests can import it:

  ```javascript
  // At the bottom of index.js, replace app.listen(...) with:
  if (require.main === module) {
    app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
  }

  module.exports = app;
  ```

### Task 4 — Run the Tests

- [ ] Run the tests:

  ```bash
  npm test
  ```

- [ ] Ensure all tests pass ✅

---

## Completion Criteria

1. All tests pass with `npm test`
2. Tests cover `/health` and `/` endpoints

---

## Back to Modules

⬅️ [Module 04 — Building & Testing Services](../../modules/04-build-and-test/README.md)
