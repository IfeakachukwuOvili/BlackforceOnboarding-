# Blackforce Platform Dev Class — Onboarding Repository

Welcome to the **Blackforce Platform Development Class**! This repository contains all the resources, exercises, and projects you need to get up and running as a platform developer on the Blackforce team.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Course Modules](#course-modules)
- [Exercises](#exercises)
- [Resources](#resources)
- [Contributing](#contributing)

---

## Overview

This onboarding class is designed to introduce new developers to the Blackforce platform stack, tooling, and best practices. By the end of this course you will be able to:

- Understand the Blackforce platform architecture
- Set up and use the core development tools
- Build, test, and deploy platform services
- Follow team conventions for code style, branching, and reviews

---

## Prerequisites

Before you begin, make sure you have the following installed on your machine:

| Tool | Minimum Version | Installation Guide |
|------|----------------|--------------------|
| Git | 2.x | https://git-scm.com/downloads |
| Node.js | 18.x LTS | https://nodejs.org |
| Docker | 20.x | https://docs.docker.com/get-docker/ |
| VS Code (recommended) | Latest | https://code.visualstudio.com |

---

## Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/IfeakachukwuOvili/BlackforceOnboarding-.git
   cd BlackforceOnboarding-
   ```

2. **Install dependencies** (when applicable inside a module)

   ```bash
   npm install
   ```

3. **Follow the modules in order** — start with `modules/01-environment-setup`.

---

## Course Modules

Each module lives in the `modules/` directory and contains its own `README.md` with learning objectives, instructions, and checkpoints.

| # | Module | Description |
|---|--------|-------------|
| 01 | [Environment Setup](modules/01-environment-setup/README.md) | Configure your local dev environment |
| 02 | [Version Control Workflow](modules/02-version-control/README.md) | Git branching strategy and PR conventions |
| 03 | [Platform Architecture](modules/03-platform-architecture/README.md) | High-level overview of the Blackforce platform |
| 04 | [Building & Testing Services](modules/04-build-and-test/README.md) | Running builds, writing and running tests |
| 05 | [Deployment Basics](modules/05-deployment/README.md) | CI/CD pipeline and deployment workflow |

---

## Exercises

Hands-on exercises are located in the `exercises/` directory. Complete them after each corresponding module.

```
exercises/
├── 01-git-basics/
├── 02-first-service/
└── 03-write-your-tests/
```

---

## Resources

- [Team Wiki](https://github.com/IfeakachukwuOvili/BlackforceOnboarding-/wiki) _(coming soon)_
- [Code Style Guide](resources/code-style-guide.md)
- [Branching Convention](resources/branching-convention.md)

---

## Contributing

Found a typo or want to improve the materials? Great!

1. Create a new branch: `git checkout -b fix/your-description`
2. Make your changes
3. Open a pull request against `main`

Please follow the [branching convention](resources/branching-convention.md) when naming branches.

---

_Happy coding! 🚀 — The Blackforce Team_
