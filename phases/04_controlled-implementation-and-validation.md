# Phase 4 — Controlled Implementation

This phase begins execution.

The objective is not to generate the entire system.  
It is to implement in controlled increments while preserving coherence, traceability, and accountability.

Speed is not the goal.  
Controlled progress is.

---

## 1. Implementation Kickoff Prompt

Execution begins with a structured instruction to the coding environment.

The purpose of this prompt is to:

- Begin implementation  
- Enforce scope discipline  
- Introduce progress tracking  
- Establish pause and validation rules  

Use the following instruction to start implementation:

```
Start implementing the project according to `docs/plan.md`.

Scope Constraints:

- Only implement tasks necessary to reach the first testable state of the MVP.
- Do not implement features beyond the defined MVP scope.
- Respect architectural boundaries defined in the plan.
- Maintain coherence with the existing project structure.

Execution Rules:

- Implement in small, logically grouped batches.
- After completing each major task group, pause.
- Summarize all changes made.
- Clearly describe what is now testable.
- Wait for user validation before continuing.

Progress Tracking:

Create or update `docs/progress.md`.

The file MUST follow this exact structure:

# <Project Name> Implementation Progress

Last updated: YYYY-MM-DD

## Summary

- High-level bullet summary of the current implementation state.
- Focus on capabilities, not internal details.
- Update this section after each major milestone.
- Keep concise and structured.

## Milestones Checklist

For each phase defined in `docs/plan.md`, create a section using this format:

### Phase X — <Phase Name>

- [ ] Task description
- [ ] Task description
- [x] Completed task
- [ ] Blocked task

Rules:

- Tasks must be derived from `docs/plan.md`.
- Each task must be actionable and concrete.
- Use only these statuses:
  - [ ] Not started
  - [x] Done
- If a task is blocked, append: (Blocked: reason)
- If a task is intentionally postponed, append: (Deferred)

Formatting Constraints:

- Do not change the file structure.
- Do not invent new sections.
- Do not include implementation logs.
- Do not duplicate plan content.
- Keep it clean and deterministic.
- Always update the "Last updated" date when modifying the file.

Update `docs/progress.md` after each meaningful implementation step.

Stop Condition:

Stop once a minimally testable version of the MVP is achieved.

Provide a summary of:
- What is testable
- What remains incomplete
- Known limitations
- Suggested next step

Do not continue implementation beyond this point without explicit user instruction.
```

---

## 2. Maintain a Dedicated Progress Artifact

Create and maintain:

`docs/progress.md`

This file provides a synthetic execution view.

- `plan.md` defines structure and intent.
- `progress.md` reflects execution state.

They must remain separate.

Plans are strategic.  
Progress is operational.

---

## 3. Controlled Batch Implementation

Implementation must proceed in small, logically coherent groups of tasks.

Each batch should:

- Correspond to related tasks
- Preserve architectural boundaries
- Maintain internal consistency

Large generation steps increase entropy.  
Small batches increase control.

---

## 4. Mandatory Pause Discipline

After each major batch:

- Pause execution.
- Summarize changes.
- Describe testable behavior.
- Update `docs/progress.md`.

No silent continuation.

Pause is control.

Pause discipline is a primary defense against context rot.
See [context-discipline.md](../context-discipline.md).

---

## 5. Human Validation Loop

After each pause:

1. The user tests the current implementation.
2. If behavior is correct:
   - Commit the changes.
   - Push to the remote repository.
   - Resume implementation.
3. If behavior is incorrect:
   - Identify the issue.
   - Adjust implementation.
   - Re-test before committing.

Never commit untested changes.  
Never batch unrelated changes in the same commit.

The model generates.  
The engineer validates.

---

## 6. Stop Condition and Boundary Enforcement

Implementation must stop once the MVP reaches its first testable state.

Unbounded generation leads to:

- Scope drift
- Hidden regressions
- Accumulated complexity
- Reduced coherence

Explicit stopping conditions preserve system integrity.

---

## Core Objective of Phase 4

Execute the plan while preserving structural control.

By the end of this phase, you should have:

- A partially implemented MVP  
- A living `docs/progress.md`  
- Version-controlled and validated changes  
- A system that remains coherent and aligned with the original problem  

Velocity without control creates fragility.  
Controlled iteration creates durable systems.

---

Next phase: [Phase 5 — Structured Improvement and Technical Evolution](./05_structured-improvement.md)
