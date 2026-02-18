# Phase 2 — Translate the Problem into a Structured Plan

Once the problem is clearly defined, the objective shifts.

The goal is no longer exploration.  
It is structured execution planning.

In this phase, the AI Native Software Engineer does not immediately request a development plan.

Instead, they design the instructions that will generate the plan.

Generation without constraint produces noise.  
Structured prompting produces leverage.

---

## 1. Generate the Plan-Generation Prompt

Rather than asking:

"Create a development plan for this project."

The engineer asks the LLM to generate a structured instruction that will guide a coding agent.

This is meta-design.

You are not generating the plan directly.  
You are designing the system that will generate the plan.

This reduces ambiguity and increases reproducibility.

Below is a structured template for generating the development plan.

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

The output of this prompt becomes the draft execution roadmap.

---

## 2. Explicitly Define the MVP

The first phase must isolate the minimum viable system.

The MVP is not:

- A partial version of the final product.
- A feature-complete system with polish removed.

It is:

- The smallest system that validates the core problem.
- The smallest implementation that allows real testing.

The plan must clearly define:

- What is included in the MVP.
- What is explicitly excluded.
- What hypothesis the MVP validates.

If the MVP cannot be described in one concise paragraph, it is too large.

---

## 3. Force Phased Decomposition

After the MVP, the plan must be decomposed into explicit phases.

Each phase must:

- Add coherent value.
- Maintain architectural stability.
- Avoid reworking prior structure.
- Be independently understandable.

The objective is controlled growth.

AI systems tend to propose overly ambitious initial plans.  
Phasing constrains complexity.

---

## 4. Iterative Plan Review and Refinement

The generated plan is a draft.

It must be reviewed, challenged, and iterated.

The engineer should:

- Ask the LLM to critique the plan.
- Request identification of hidden complexity.
- Detect architectural instability.
- Validate dependency ordering.
- Question whether scope has expanded unnecessarily.

After each refinement, request a structured summary of the updated plan.

This acts as a coherence checkpoint.

Iteration continues until:

- The MVP is sharply defined.
- Phases are scoped realistically.
- Dependencies are logical.
- The plan remains aligned with the original problem.

Satisfaction does not mean perfection.

It means structural clarity and bounded complexity.

---

## 5. Preserve Traceability to the Original Problem

At this stage, drift often begins.

Each phase should be evaluated against the original problem definition:

- Does this phase directly contribute to solving the defined problem?
- Is this feature essential or ornamental?
- Has scope expanded without justification?

Execution planning must remain problem-driven.

---

## Core Objective of Phase 2

Transform clarity into structured execution.

By the end of this phase, you should have:

- A reusable prompt for generating development plans.
- A clearly defined MVP.
- A phased roadmap toward the final system.
- A plan that is scoped, coherent, and aligned with the original problem.

If the plan feels overwhelming or vague, the structure is insufficient.

---

Next phase: [Phase 3 — Establish the Foundation](./03_establish-the-foundation.md.md)
