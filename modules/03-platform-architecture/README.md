# Module 03 — Platform Architecture

## Learning Objectives

By the end of this module you will be able to:

- Describe the high-level architecture of the Blackforce platform
- Identify the key services and how they communicate
- Understand the data flow from client to database

---

## High-Level Architecture

```
┌─────────────┐       HTTPS        ┌──────────────────┐
│   Clients   │ ─────────────────► │   API Gateway    │
│ (Web / App) │                    └────────┬─────────┘
└─────────────┘                             │
                                    ┌───────┴────────┐
                              Route │                │ Route
                                    ▼                ▼
                           ┌─────────────┐  ┌─────────────┐
                           │  Service A  │  │  Service B  │
                           │  (Node.js)  │  │  (Node.js)  │
                           └──────┬──────┘  └──────┬──────┘
                                  │                │
                            ┌─────┴────────────────┘
                            ▼
                     ┌─────────────┐
                     │  Database   │
                     │ (PostgreSQL)│
                     └─────────────┘
```

### Components

| Component | Technology | Responsibility |
|-----------|-----------|---------------|
| API Gateway | Node.js / Express | Route, authenticate, and rate-limit requests |
| Service A | Node.js | Core business logic (example) |
| Service B | Node.js | Supporting domain logic (example) |
| Database | PostgreSQL | Persistent data storage |
| Message Queue | Redis Pub/Sub | Async inter-service communication |

---

## Communication Patterns

- **Synchronous**: REST over HTTPS between client ↔ gateway ↔ services
- **Asynchronous**: Events published to Redis channels for non-blocking workflows

---

## Key Principles

1. **Single Responsibility** — each service owns one bounded context
2. **12-Factor App** — configuration via environment variables, stateless processes
3. **Observability** — structured JSON logging, health-check endpoints on every service

---

## Next Module

➡️ [Module 04 — Building & Testing Services](../04-build-and-test/README.md)
