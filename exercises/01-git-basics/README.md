# Exercise 01 — Git Basics

## Goal

Practice the Blackforce version control workflow end-to-end.

---

## Instructions

Complete each task in order. Check off each item as you finish.

### Task 1 — Configure Git

- [ ] Set your `user.name` and `user.email` globally (see [Module 01](../../modules/01-environment-setup/README.md))

### Task 2 — Clone & Explore

- [ ] Clone this repository (if you haven't already)
- [ ] Run `git log --oneline` to view the commit history
- [ ] Run `git branch -a` to list all branches

### Task 3 — Create a Feature Branch

- [ ] Create a new branch named `feature/your-name-git-exercise` and switch to it:

  ```bash
  git checkout -b feature/<your-name>-git-exercise
  ```

### Task 4 — Make a Change & Commit

- [ ] Create a file called `hello.md` in this directory with the following content:

  ```markdown
  # Hello from <Your Name>!
  ```

- [ ] Stage and commit the file using a conventional commit message:

  ```bash
  git add hello.md
  git commit -m "docs(exercise-01): add hello file for <your-name>"
  ```

### Task 5 — Open a Pull Request

- [ ] Push your branch to the remote:

  ```bash
  git push origin feature/<your-name>-git-exercise
  ```

- [ ] Go to the repository on GitHub and open a Pull Request against `main`
- [ ] Write a clear PR description explaining what you changed and why

---

## Completion Criteria

Your exercise is complete when:

1. A PR is open against `main` with your `hello.md` file
2. The PR title follows the Conventional Commits format
3. All checkboxes above are ticked

---

## Back to Modules

⬅️ [Module 02 — Version Control Workflow](../../modules/02-version-control/README.md)
