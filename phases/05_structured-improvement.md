# Phase 5 — Structured Improvement and Technical Evolution

The MVP is functional.

At this point, the objective shifts.

You are no longer building capability.  
You are strengthening durability.

Phase 5 formalizes technical stabilization, refinement, and long-term control.

---

## 1. Generate and Curate the Project Guidelines File

Once the MVP works, generate a project guidelines file.

Call it:

`docs/project-guidelines.md`

Most coding environments provide a command or initialization feature that can generate a first draft of this file based on the current state of the project.

Use it.

The generated draft serves as raw material.  
It is not final.

The engineer must:

- Review the draft critically.
- Remove unnecessary boilerplate.
- Eliminate generic advice.
- Strip redundant constraints.
- Keep only what truly matters for this specific project.

The final file should be:

- Short
- Explicit
- Focused on non-negotiable constraints
- Specific to the project’s architecture

This file is not documentation.  
It is a constraint system.

If it becomes long, it becomes noise.

Conversation is transient.  
Guidelines are durable.

Generate first.  
Prune aggressively.  
Keep it minimal.

---

## 2. Strengthen Verification (Optional but Recommended)

Before deep refactoring, reinforce test discipline.

If possible, introduce or expand Test Driven Development (TDD):

- Write tests before modifying behavior.
- Protect critical paths.
- Define expected outputs explicitly.

Refactoring without tests increases instability.

Improvement without verification is speculation.

---

## 3. Introduce Expert Agents

Structured improvement cycles begin here.

Use specialized review passes referred to as expert agents.

An expert agent is not a different tool.  
It is a targeted analytical request to an LLM.

Examples:

- Performance-focused agent
- Refactoring-focused agent
- Maintainability-focused agent
- Security-focused agent

Ask targeted questions:

- Identify performance bottlenecks.
- Detect structural duplication.
- Highlight architectural inconsistencies.
- Suggest simplifications without altering behavior.

Expert focus increases signal.

---

## 4. Use LLMs to Refine Your Own Prompts

If you struggle to express a precise change request, use an LLM to refine it.

Example workflow:

- Provide context.
- Attach a screenshot for UI changes if relevant.
- Describe the intended outcome.
- Ask the LLM to generate a structured prompt for the coding agent.

Better prompts produce cleaner changes.

Prompt formulation is part of engineering discipline.

---

## 5. Perform AI-Assisted Code Review Before Merge

Before merging any feature branch into the main branch, perform a structured AI code review.

This is mandatory for stability.

The review should compare:

- The feature branch
- Against the main branch

The objective is not style critique.  
It is structural risk detection.

Use a structured prompt such as:

```
Review the changes in this feature branch compared to the main branch.

Analyze the diff for:

- Logical errors
- Edge cases
- Unintended behavioral changes
- Performance regressions
- Architectural inconsistencies
- Violations of `docs/project-guidelines.md`
- Increased coupling or hidden complexity
- Missing test coverage (if tests exist)

For each issue:

- Explain the risk clearly.
- Classify severity (low, medium, high).
- Suggest corrective action.
- Indicate whether it should block the merge.

Do not rewrite the code.
Focus on analysis and risk identification.
```

The output of this review must be evaluated before merging.

AI review does not replace human judgment.  
It augments it.

Never merge blindly.

---

## 6. Generate a Technical Debt Roadmap

Improvement must be documented.

Request generation of:

`docs/technical-debt.md`

This file becomes the technical backlog.

Each entry should include:

- Description
- Risk level
- Expected benefit
- Estimated complexity
- Suggested priority

Critique must convert into structured evolution.

---

## 7. Build and Maintain the Technical Backlog

`technical-debt.md` is not commentary.  
It is a roadmap.

The engineer may:

- Schedule improvement work
- Address debt incrementally
- Revisit backlog after major milestones

This prevents reactive cleanup.

It enables deliberate evolution.

---

## 8. Preserve Cross-Model Stability

LLMs evolve.

Switching models may introduce stylistic or structural inconsistencies.

Structured review and refactoring cycles preserve coherence.

Repeated AI-assisted analysis:

- Detects duplication
- Highlights pattern drift
- Maintains architectural intent

---

## 9. Controlled Refactoring Discipline

Refactoring must remain bounded.

Rules:

- Do not change external behavior unintentionally.
- Protect changes with tests when possible.
- Refactor in isolated commits.
- Re-run verification after each improvement.

Improvement must strengthen the system.  
It must not expand scope.

---

## Core Objective of Phase 5

Strengthen the system without expanding functionality.

By the end of this phase, you should have:

- A functional MVP
- A concise `docs/project-guidelines.md`
- Optional expanded test coverage
- Structured AI-assisted pre-merge review
- A technical backlog in `docs/technical-debt.md`
- Increased long-term maintainability

Implementation builds capability.  
Improvement builds durability.

Both require discipline.