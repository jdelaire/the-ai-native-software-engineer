# Prompts Reference

A quick-reference collection of the structured prompts used throughout the framework phases.

---

## Phase 2 — Plan-Generation Prompt

**Context:** Instead of asking vaguely for a development plan, this meta-prompt generates a structured instruction that guides a coding agent to produce a phased, MVP-first roadmap.

```
Generate a structured development plan for this project based on the defined problem statement.

The plan must:

1. Be divided into clearly defined phases.
2. Isolate a sharply scoped MVP as Phase 1.
3. Explicitly state what is included and excluded from the MVP.
4. Define the hypothesis the MVP is validating.
5. Decompose subsequent phases into incremental expansions.
6. Preserve architectural stability between phases.
7. Avoid unnecessary complexity.
8. Prevent premature optimization.

For each phase, include:

- Objective
- Scope
- Key deliverables
- Dependencies
- Risks
- Validation criteria

Constraints:

- Do not design the final system in full detail upfront.
- Favor progressive complexity over full-system design.
- Maintain traceability to the original problem.
- Avoid introducing features that do not directly serve the core problem.

Output the plan in structured Markdown as .md file.
```

---

## Phase 3 — Plan Persistence Prompt

**Context:** Once inside the coding environment, this prompt feeds the result of the Phase 2 plan-generation prompt to the agent and instructs it to produce and persist the structured development plan as `docs/plan.md`.

```
Produce a structured, phased development plan based on:

<Plan-Generation-Prompt-Result>

Separate MVP from subsequent phases.

Persist the output in `docs/plan.md`.
```

---

## Phase 3 — Agent-Led Plan Review Prompt

**Context:** Before the human reviews the plan, this prompt instructs the agent to act as a structural adversary — surfacing ambiguity, hidden complexity, and implicit assumptions in `docs/plan.md`.

```
Review `docs/plan.md` critically.

Identify:

- Ambiguous requirements
- Missing constraints
- Hidden complexity
- Unrealistic phase boundaries
- Architectural instability risks
- Implicit assumptions that require clarification

For each issue found:

- Explain the concern
- Ask for explicit clarification
- Suggest a possible refinement if appropriate

Do not modify the plan yet.
First, surface uncertainties and request precision.
```

---

## Phase 4 — Implementation Kickoff Prompt

**Context:** This prompt kicks off controlled execution. It enforces MVP scope, batch-based implementation with mandatory pauses, and introduces `docs/progress.md` as a living tracking artifact.

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

## Phase 5 — AI-Assisted Code Review Prompt

**Context:** Before merging a feature branch into main, this prompt performs structural risk detection — focusing on logical errors, performance regressions, and guideline violations rather than style.

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
