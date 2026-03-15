---
name: tdd-workflow
description: Guidelines for implementing or changing production code using a test-driven development workflow.
---
# Test-Driven Development Workflow

When implementing a feature or fixing a bug in production code, follow the TDD cycle:

## Procedure

To add a new feature or fix a bug, follow these steps:

1. **Red**
  - Write a test that describes the expected behavior or reproduces the bug.
  - Run the test and confirm that it fails for the expected reason.
2. **Green**
  - Write the minimum amount of code needed to make the test pass.
  - Keep the implementation narrowly focused on the behavior covered by the test.
3. **Refactor**
  - Improve the code structure, naming, and duplication without changing behavior.
  - Keep all relevant tests passing throughout the refactor.

## Best Practices

- Start with a failing test before changing implementation code.
- Prefer small, incremental TDD cycles over large multi-step changes.
- For bug fixes, first add a regression test that fails before applying the fix.
- Do not refactor unrelated areas while working on the current change.
- Use a ``test-runner` agent to keep your context focused on implementation while running tests.