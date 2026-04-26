# Module 05 — Deployment Basics

## Learning Objectives

By the end of this module you will be able to:

- Understand the CI/CD pipeline flow
- Trigger a deployment to the staging environment
- Monitor a deployment and roll back if necessary

---

## CI/CD Pipeline Overview

We use **GitHub Actions** for continuous integration and continuous delivery.

```
Push / PR ──► Lint & Test ──► Build Docker Image ──► Push to Registry
                                                            │
                                                 ┌──────────┘
                                                 ▼
                                         Deploy to Staging ──► Manual Approval ──► Deploy to Production
```

### Workflow Files

| File | Trigger | Purpose |
|------|---------|---------|
| `.github/workflows/ci.yml` | Every push / PR | Lint, test, build |
| `.github/workflows/deploy-staging.yml` | Merge to `main` | Deploy to staging |
| `.github/workflows/deploy-prod.yml` | Manual approval | Deploy to production |

---

## Environment Variables

Sensitive configuration (API keys, database URLs) is stored in **GitHub Secrets** and injected at deploy time. Never commit secrets to the repository.

Local development uses a `.env` file (never committed — add it to `.gitignore`).

```bash
# .env (local only)
DATABASE_URL=postgresql://localhost:5432/blackforce_dev
JWT_SECRET=changeme
```

---

## Deploying to Staging

Staging is deployed automatically when a PR is merged to `main`. Monitor the deployment in the **Actions** tab of the repository.

## Rolling Back

If a deployment causes issues:

1. Open the **Actions** tab
2. Find the last successful deployment run
3. Click **Re-run jobs** to redeploy the previous version

Or use the CLI:

```bash
git revert <bad-commit-sha>
git push origin main
```

---

## Health Checks

Every service exposes a `/health` endpoint:

```
GET /health
200 OK
{ "status": "ok", "version": "1.2.3" }
```

---

## Congratulations! 🎉

You have completed the Blackforce Platform Dev Class onboarding. You are now ready to contribute to the platform!

➡️ Return to the [main README](../../README.md) for next steps.
