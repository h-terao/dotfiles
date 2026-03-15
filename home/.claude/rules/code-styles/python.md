---
paths: ["**/*.py"]
---
# Python Code Style Guide

## Prerequisites

We use following tools for development:

- uv: A fast and minimalistic Python package manager.
- ruff: A fast Python linter and formatter.
- pytest: A testing framework for Python.
- mypy: A static type checker for Python.

If any prerequisite is not installed, please request user to install it. **DO NOT** install any tools and packages without user's permission.

## Quality Assurance

When you make changes to the Python code, always use `pytest`, `ruff` and `mypy` for testing, linting and type checking to ensure that your code adheres to the code style and is free of errors. These tools help maintain code quality and consistency across the project. Always run these tools before committing your changes to ensure that your code meets the project's standards and does not introduce any issues.

## Code Style

- Follow PEP 8 style guide for Python code.
  - Follow PEP 585 for type annotations; use built-in collection types (e.g., `list`, `dict`, `set`) instead of importing from `typing` (e.g., `List`, `Dict`, `Set`).
- All code SHOULD be properly formatted and linted using `ruff`.
- Use type annotations and check them with `mypy` to ensure type safety.
- Write tests for your code and run them with `pytest` to ensure that your code works as expected and does not introduce any regressions.
- You SHOULD import modules at the top of the file, and avoid importing modules inside functions or classes unless necessary. You may import modules inside functions or classes only when it is necessary to avoid circular imports or to improve performance.
- Use f-strings for string formatting instead of older methods like `%` or `str.format()`.
- Data oriented programming is preferred over object-oriented programming.
  - Class fields should be public and not changed after initialization. To have mutable states, implement data structures and directly manipulate them with functions. Avoid using classes with methods that change the internal state of the object.
  - Actively use `dataclassses` or `pydantic` for data structures. They are preferred over `dict` as they provide better type safety and make the code more self-documenting.
- For I/O boundaries (e.g., network requests, DB access and file system), consider validating the inputs and outputs.
  - Pydantic models are recommended for validation.
- For public functions and classes, you MUST provide clear and concise docstrings that describe their purpose, parameters, return values, and any exceptions they may raise. This helps other developers understand how to use your code and what to expect from it.
- You SHOULD NOT call private functions or classes from outside of the module where they are defined.
- For very long string literals, you MAY use parentheses to break them into multiple lines for better readability. For example:
  ```python
  long_string = (
      "This is a very long string that can be broken into multiple lines "
      "for better readability and maintainability."
  )
  ```