---
categories:
  - Tools
date: 2025-09-08
draft: false
links:
  - index.md
readtime: 10
slug: engineering-collaboration-guidelines
authors:
  - <qihang>
---
# Engineering Collaboration Guidelines in VocabWise - V0.1
This post outlines our Git & GitHub collaboration guidelines.We’ve observed that unstructured engineering collaboration often leads to deeper, systemic issues that take even more time to fix later. We need to recognize that the team operates as an inseparable whole and intentionally increase communication at key checkpoints. Relying solely on individual brilliance is not sustainable; we must cultivate collective intelligence by designing processes and architecture that enable the team’s emergent intelligence. That's why we need to establish these guidelines.
<!-- more -->

## Overview
[TOC]

## Git & GitHub Collaboration Guidelines

### **Branch Management**
   1. Always create new branches from `main`.
   2. Branch naming convention: `name/sub-feature` where:
     - `name` = engineer’s name or handle
     - `sub-feature` = current sub-feature name
   3. Keep each branch as small as possible while functionally complete.
   4. For larger features, first break them into multiple sub-features, then create one branch per sub-feature.

### **Commit And Push Conventions**
   1. Commit and push frequently, even on personal branches.
   2. Requirement: every commit must be accompanied by a push.
   3. Purpose: ensure teammates can always fetch the latest branch progress from the cloud.
   4. Commit Message Convention ([Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/))
     - Enforce commit messages in the format: `type(scope): subject`.
     - Common types include:
       - `feat`: new feature
       - `fix`: bug fix
       - `docs`: documentation changes
       - `style`: formatting changes that do not affect logic
       - `refactor`: code refactoring
       - `test`: add or modify tests
     - Benefits: enables automated CHANGELOG generation and makes review/blame more efficient.

### **Pull Request And Merge Workflow**
   1. When a branch is ready to merge, the branch owner must open a Pull Request (PR).
   2. PRs must be reviewed by another engineer.
   3. In Slack, pin/tag the designated engineer(s) to prompt the code review.
   4. PR Description Template
     - Require a PR template via `.github/pull_request_template.md`.
     - The template should include:
       - Why: what problem is being solved
       - What: the changes included in this PR
       - How: how to test/verify the changes
       - Links: related Ticket/Issue references
   5. Merge Strategy
     - use `Squash and Merge` to keep `main` history clean (one PR → one commit), and require a clear, conventional commit message at merge time.

### **Code Review Requirements**
Reviewers must at minimum check:

1. PR Description
    - Review the PR description to ensure it is complete and clear.
2. CI status checks
    - CI (Build, Lint, Test) should be automated (e.g., GitHub Actions).
    - Reviewers verify CI pipelines pass; do not manually run builds for the review.
    - If CI fails, request the author to fix CI before proceeding with the review.

3. Merge direction & details
    - Ensure the PR targets `main` for the merge.
    - Verify branch naming, commit messages, and scope of changes are correct.

4. Code quality checklist
    - Logic: implements requirements correctly; no obvious bugs; edge cases considered.
    - Tests: adequate unit/integration tests for new features; regression tests for fixes.
    - Readability/Style: follows team standards; naming is clear; complexity is justified.
    - Documentation: complex logic or public APIs are documented; README updated as needed.

## Summary
1. Ensure codebase cleanliness and consistency.
2. Improve collaboration transparency and traceability.
3. Reduce merge conflicts and integration risks caused by poor branch management.

***References:***

\bibliography

