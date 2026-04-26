# Exercise 02 — Your First Service

## Goal

Build and run a minimal Node.js HTTP service locally.

---

## Instructions

### Task 1 — Initialise the Project

- [ ] Create a new directory `my-service/` inside this exercise folder
- [ ] Inside `my-service/`, initialise a new npm project:

  ```bash
  npm init -y
  ```

### Task 2 — Install Dependencies

- [ ] Install Express:

  ```bash
  npm install express
  ```

### Task 3 — Create the Server

- [ ] Create `my-service/index.js` with the following content:

  ```javascript
  const express = require('express');
  const app = express();
  const PORT = process.env.PORT || 3000;

  app.get('/health', (req, res) => {
    res.json({ status: 'ok', version: '1.0.0' });
  });

  app.get('/', (req, res) => {
    res.send('Hello from my Blackforce service!');
  });

  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
  ```

### Task 4 — Run the Service

- [ ] Start the server:

  ```bash
  node my-service/index.js
  ```

- [ ] Open your browser (or use `curl`) and verify:

  ```bash
  curl http://localhost:3000/health
  # Expected: {"status":"ok","version":"1.0.0"}
  ```

### Task 5 — Add a Start Script

- [ ] Add a `"start"` script to `package.json`:

  ```json
  "scripts": {
    "start": "node index.js"
  }
  ```

---

## Completion Criteria

Your exercise is complete when:

1. `npm start` starts the server without errors
2. `GET /health` returns `{"status":"ok","version":"1.0.0"}`
3. `GET /` returns a greeting message

---

## Back to Modules

⬅️ [Module 03 — Platform Architecture](../../modules/03-platform-architecture/README.md)
