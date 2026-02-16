# Framework

## The AI Native Software Engineering Lifecycle

This project defines a disciplined lifecycle for building software in an environment where intelligence is programmable.

It is not model-specific.  
It is not tool-dependent.  
It is methodology-first.

The lifecycle consists of five phases.

Each phase produces artifacts.  
Each phase has a clear objective.  
Each phase introduces structural constraints.

The phases are sequential — but the system is cyclical.

---

## Phase 1 — Identify the Problem

Objective:
Replace enthusiasm with structured clarity.

Deliverables:
- Precise problem statement
- Candidate solution direction
- Defined constraints
- Chosen platform
- Stable conceptual summary
- Project name

Transition condition:
The problem can be articulated clearly and defended under critique.

---

## Phase 2 — Translate to a Structured Plan

Objective:
Convert clarity into a phased execution roadmap.

Deliverables:
- A reusable plan-generation prompt
- A sharply scoped MVP definition
- A phased roadmap
- Explicit validation criteria per phase

Transition condition:
The plan is coherent, bounded, and aligned with the original problem.

---

## Phase 3 — Establish the Foundation

Objective:
Create a controlled execution environment.

Deliverables:
- Project workspace
- Coding environment initialized
- Persisted and stress-tested `docs/plan.md`
- Version control initialized

Transition condition:
The plan is persisted, clarified, reviewed, and structurally stable.

---

## Phase 4 — Controlled Implementation

Objective:
Execute the plan in bounded, validated increments.

Deliverables:
- Partially implemented MVP
- `docs/progress.md`
- Human-validated commits
- First testable system state

Transition condition:
The MVP reaches a stable, testable state.

---

## Phase 5 — Structured Improvement

Objective:
Strengthen durability without expanding scope.

Deliverables:
- `docs/project-guidelines.md`
- Optional test expansion
- AI-assisted pre-merge review discipline
- `docs/technical-debt.md`
- Technical backlog governance

Transition condition:
System stability is reinforced and technical risk is visible.

---

# Lifecycle Loop

This framework is not waterfall.

After Phase 5, the system returns to Phase 2 for the next expansion cycle.

New feature → new plan → controlled implementation → structured improvement.

Each loop increases capability.  
Each improvement cycle increases durability.

Implementation builds.  
Improvement hardens.

Clarity governs both.

---

# Cross-Cutting Discipline

Context discipline applies across all phases.

Long sessions degrade coherence.
Unmanaged context introduces architectural drift.

Structural defenses are defined in:

→ `context-discipline.md`

Context must be curated, not accumulated.

---

# Core Artifacts

The methodology produces durable artifacts:

- `docs/plan.md`
- `docs/progress.md`
- `docs/project-guidelines.md`
- `docs/technical-debt.md`

Conversation is transient.  
Artifacts are durable.

---

# Governing Principles

Across all phases:

- Specification precedes implementation.
- Constraints precede generation.
- Verification precedes merge.
- Clarity precedes speed.
- Ambiguity compounds.
- Structure scales.

The cost of code decreases.  
The cost of unmanaged context increases.

Engineering remains discipline.