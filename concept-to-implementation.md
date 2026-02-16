# Concept to Implementation Mapping

This file maps conceptual elements of the AI Native Software Engineering framework
to common tool-level implementations.

The framework remains tool-agnostic.

This mapping clarifies how abstract concepts typically appear in real environments.

---

## Project Guidelines File

Concept:
`docs/project-guidelines.md`

Purpose:
Defines the behavioral contract between the project and the coding agent.
Contains architectural invariants and non-negotiable constraints.

Common Implementations:

- `CLAUDE.md`
- `AGENTS.md`
- `codex.md`
- Tool-generated manifest files
- Repository-level instruction files

Important:

The conceptual file remains `project-guidelines.md`.

Tool-specific files should either:
- Reference it
- Mirror it
- Or symlink to it

Single source of truth is preferred.

---

## Development Plan

Concept:
`docs/plan.md`

Purpose:
Phased execution roadmap defining MVP and expansion phases.

Common Implementations:

- Planning documents
- Roadmap markdown files
- Structured project briefs
- Internal specification documents

---

## Progress Tracking

Concept:
`docs/progress.md`

Purpose:
Operational execution tracker derived from the plan.

Common Implementations:

- Task lists
- Kanban boards
- Issue trackers
- Lightweight execution logs

The framework prefers a versioned Markdown artifact.

---

## Technical Debt Roadmap

Concept:
`docs/technical-debt.md`

Purpose:
Structured backlog of technical improvements, refactoring opportunities, and performance optimizations.

Common Implementations:

- Technical backlog
- Refactoring task board
- Architecture audit log

---

## Expert Agents

Concept:
Targeted analytical passes using an LLM with domain-specific focus.

Purpose:
Increase signal during review and improvement.

Common Implementations:

- Skills
- Sub-agents
- Plugins
- Specialized prompts
- Role-based LLM configurations

Important:

An expert agent is not a different system.
It is a structured request with narrowed focus.

---

## AI-Assisted Code Review

Concept:
Pre-merge structural analysis of feature branches.

Purpose:
Identify risk before integration.

Common Implementations:

- Pull request AI review
- Diff analysis tools
- Pre-merge automation
- Manual LLM diff inspection

The key is structured review, not style critique.

---

## Prompt Refinement

Concept:
Using an LLM to improve your own change requests.

Purpose:
Increase clarity before instructing the coding agent.

Common Implementations:

- Screenshot-to-prompt workflows
- Context-enriched instruction drafting
- Prompt iteration before execution

Better instructions reduce unintended side effects.

---

## Test Discipline

Concept:
Verification before modification.

Purpose:
Protect behavior during refactoring and improvement.

Common Implementations:

- Test Driven Development (TDD)
- Unit testing frameworks
- Integration test suites
- Regression checks

Improvement without verification increases instability.

---

# Guiding Rule

Concepts are stable.
Implementations evolve.

When tools change, the mapping may change.

The discipline does not.