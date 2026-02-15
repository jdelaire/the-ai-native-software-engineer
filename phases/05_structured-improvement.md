# Phase 5 — Structured Improvement and Technical Evolution

The MVP is functional.

At this point, the objective shifts.

You are no longer building capability.
You are strengthening durability.

Phase 5 formalizes technical stabilization and long-term control.

---

## 1. Generate and Curate the Project Guidelines File

Once the MVP works, generate a project guidelines file.

Call it:

`docs/project-guidelines.md`

Most coding environments provide a command or initialization feature that can generate a first draft of this file based on the current state of the project.

Use it.

The generated draft serves as raw material.

It is not final.

The engineer must then:

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

Keep only:

- Architectural invariants
- Critical naming conventions
- Testing expectations
- Structural boundaries
- Rules that prevent drift

This file is not documentation.
It is a constraint system.

If it becomes long, it becomes noise.

The purpose of `project-guidelines.md` is to:

- Stabilize generation behavior
- Reduce architectural drift
- Preserve consistency across models
- Make expectations explicit

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

At this stage, structured improvement cycles begin.

Use specialized review passes referred to as expert agents.

An expert agent is not a different tool.
It is a targeted analytical request to an LLM.

Examples:

- Performance-focused agent
- Refactoring-focused agent
- Maintainability-focused agent
- Security-focused agent

Instead of asking:

"Improve this project."

Ask:

- Identify performance bottlenecks.
- Detect structural duplication.
- Highlight architectural inconsistencies.
- Suggest simplifications without altering behavior.

Expert focus increases signal.

---

## 4. Generate a Technical Debt Roadmap

Improvement must be documented.

Request generation of:

`docs/technical-debt.md`

This file becomes the technical backlog.

It should contain:

- Refactoring opportunities
- Performance improvements
- Structural simplifications
- Naming inconsistencies
- Redundant abstractions
- Architectural weaknesses

Each entry should include:

- Description
- Risk level
- Expected benefit
- Estimated complexity
- Suggested priority

Critique must convert into structured evolution.

---

## 5. Build and Maintain the Technical Backlog

`technical-debt.md` is not commentary.
It is a roadmap.

The engineer may now:

- Schedule improvement work
- Address debt incrementally
- Revisit backlog after major milestones

This prevents reactive cleanup.

It enables deliberate evolution.

---

## 6. Preserve Cross-Model Stability

LLMs evolve.

Switching models may introduce stylistic or structural inconsistencies.

A structured improvement phase mitigates this risk.

Repeated review and refactoring:

- Preserve architectural coherence
- Detect repetition patterns
- Reduce duplication
- Stabilize long-term code quality

LLMs are particularly effective at identifying repetition.

Structured review cycles leverage that strength.

---

## 7. Controlled Refactoring Discipline

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
- A structured technical backlog in `docs/technical-debt.md`
- Identified and prioritized improvement tasks
- Increased long-term maintainability

Implementation builds capability.
Improvement builds durability.

Both require discipline.
