# Module 01 — Environment Setup

## Learning Objectives

By the end of this module you will be able to:

- Install and configure all required developer tools
- Verify your environment is ready for platform development
- Clone and run the project locally

---

## Steps

### 1. Install Git

Download and install Git from https://git-scm.com/downloads.

Verify your installation:

```bash
git --version
# Expected: git version 2.x.x or higher
```

Configure your identity:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

### 2. Install Node.js (LTS)

Download Node.js 18 LTS from https://nodejs.org.

Verify:

```bash
node --version   # v18.x.x
npm --version    # 9.x.x or higher
```

### 3. Install Docker

Follow the guide for your OS at https://docs.docker.com/get-docker/.

Verify:

```bash
docker --version        # Docker version 20.x.x or higher
docker compose version  # v2.x.x or higher
```

### 4. Install VS Code (recommended)

Download from https://code.visualstudio.com and install the following extensions:

- **ESLint**
- **Prettier – Code formatter**
- **Docker**
- **GitLens**

### 5. Clone this Repository

```bash
git clone https://github.com/IfeakachukwuOvili/BlackforceOnboarding-.git
cd BlackforceOnboarding-
```

---

## Checkpoint ✅

Run the following checklist before moving on to the next module:

- [ ] `git --version` prints a version ≥ 2.x
- [ ] `node --version` prints v18.x.x
- [ ] `docker --version` prints a version ≥ 20.x
- [ ] Repository cloned successfully

---

## Next Module

➡️ [Module 02 — Version Control Workflow](../02-version-control/README.md)
