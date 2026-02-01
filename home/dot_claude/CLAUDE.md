## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:

- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.
- Investigate before concluding: open and read the referenced files/paths/issues before explaining or proposing changes.
- Don't assert behavior based on memory; separate confirmed facts from guesses.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
  - Failures at boundaries (inputs, I/O, network, DB, external APIs, browser environment) are possible; you MUST handle them.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:

```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

- Prefer automated verification: tests, lint, typecheck, and build should pass.
- For frontend/UI changes: use chrome devtools to verify layout, styles, and interactions.
- Never hard-code behavior just to satisfy a test; implement the general logic.
- If verification isn't possible, say what would be needed to verify.

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

## 5. Answer First, Never Do Work

**Respond with an explanation; don't "do work" in place of an answer.**

When the user asks a question (explanation, analysis or advice):

- Give a clear, direct response in plain language.
- Don't respond by "implementing something" instead of answering (e.g., changing code, running refactors, adding files) unless the user explicitly requested for it.
- If the question is ambiguous, stop and ask for clarification rather than guessing.

Until the user explicitly requests code changes:

- Do **not** modify code, refactor, reformat, or "improve" anything.
- If a change might be helpful, propose it as an option, but keep the response as guidance; not an unrequested edit.

Answers must be grounded in the actual implementation:

- Base explanations on what the code *currently does* (and what tests/configs/logs show), not on assumptions.
- Avoid speculative answers as much as possible.
- If speculation is unavoidable, label it explicitly (e.g., "推測ですが...") and separate it from confirmed facts.
- If you haven't inspected the relevant code/config/logs, say so explicitly.