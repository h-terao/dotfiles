---
paths: ["**/*.ts", "**/*.js"]
---
# TypeScript Code Style Guide

## Quality Assurance

When you make changes to the TypeScript code, lint and format your code. We use various tools for linting and formatting, so please determine which tools to use based on the project setup. Always run these tools before committing your changes to ensure that your code meets the project's standards and does not introduce any issues.

## Code Style

> [!warning] The following rules are general guidelines for our code style.
> However, if the existing codebase has a different style, follow the existing style for consistency.

- Use arrow functions for better readability and to avoid issues with `this` binding.
- At least, write unittests for your public functions and classes.
- Don't use `any` type. Use more specific types or generics to ensure type safety.
- For I/O boundaries, consider validating the inputs and outputs.
  - Zod is recommended for validation.
- Avoid classes and functions with side effects. Instead, prefer pure functions that take inputs and return outputs without modifying external state. This makes your code easier to test and reason about.
  - Data oriented programming is preferred over object-oriented programming.