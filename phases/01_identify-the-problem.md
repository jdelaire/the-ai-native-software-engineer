# Phase 1 — Identify the Problem

Problem identification is not brainstorming.  
It is controlled exploration.

The AI Native Software Engineer does not begin by building.  
They begin by interrogating the problem.

---

## 1. Start From a Concrete Problem

The process begins with a specific friction, inefficiency, or unmet need.

Not:

"I want to build an app."

But:

"There is a recurring constraint or inefficiency in this context."

The problem must be framed in observable terms:

- Who experiences it?
- How often does it occur?
- What is the cost of not solving it?

Vague ambition produces vague systems.

---

## 2. Use an LLM as a Critical Thinking Partner

At this stage, the LLM is not used to generate code.  
It is used to pressure-test reasoning.

The engineer:

- Describes the problem clearly.
- Proposes an initial solution.
- Explicitly asks for blind spots.
- Questions assumptions.
- Requests alternative framings of the problem.

The LLM becomes a structured adversary.

This is not delegation.  
It is amplification of analysis.

Do not ask:

"Is this a good idea?"

Ask instead:

- What are the weaknesses in this approach?
- What edge cases am I ignoring?
- What constraints might invalidate this?
- Is there a simpler framing?
- Am I solving the root problem or only a symptom?

The goal is not validation.  
The goal is stress testing.

---

## 3. Evaluate Solution Direction Early

A candidate solution must be proposed early and exposed to critique.

Without a proposed direction, discussion remains abstract.

The engineer should:

- Articulate a candidate solution.
- Ask the LLM to compare it to alternatives.
- Identify structural weaknesses.
- Evaluate whether the solution addresses the core problem.

Many systems fail because they optimize the wrong layer.

Early confrontation reduces later rework.

---

## 4. Define the Platform Intentionally

Before planning architecture, the platform must be clarified.

Is this:

- A web application?
- A mobile application?
- A command-line tool?
- A backend service?
- A browser extension?

Platform choice constrains architecture, user interaction, and complexity.

The LLM can assist in evaluating tradeoffs such as:

- Deployment complexity
- Distribution friction
- User acquisition constraints
- Technical limitations
- Maintenance overhead

The engineer makes the final decision.

The platform is a constraint, not an afterthought.

---

## 5. Iterate and Summarize Continuously

One of the most important disciplines in this phase is iterative summarization.

After each significant discussion, ask the LLM to summarize the current state of understanding.

This serves to:

- Detect conceptual drift
- Surface contradictions
- Clarify assumptions
- Reveal unresolved ambiguity

If the summary does not accurately reflect your intent, the problem definition is not stable.

Summarization is a coherence check.

It prevents idea inflation and conceptual sprawl.

---

## 6. Know When to Stop Refining

This phase does not aim for perfection.

It aims for clarity sufficient to:

- Define scope
- Articulate success criteria
- Constrain the solution space

Over-refinement leads to paralysis.  
Under-refinement leads to architectural instability.

The objective is not certainty.  
It is bounded clarity.

---

## 7. Explore Naming Early

Naming is not branding.  
It is conceptual compression.

A project name forces clarity.

When you attempt to name a system, you are forced to answer:

- What is its core purpose?
- What layer does it operate on?
- Who is it for?
- What identity does it imply?

The LLM can assist by generating candidate names based on the refined problem statement and solution direction.

However, this is not about finding something "catchy."

It is about testing alignment.

A good name should:

- Reflect the core function of the system
- Avoid feature-level specificity
- Avoid trend-driven terminology
- Feel consistent with the problem being solved

If naming feels difficult, it is often a signal that the problem definition is still unstable.

Naming acts as a conceptual stress test.

It reveals ambiguity.

If multiple radically different names feel equally valid, the project scope may not yet be constrained enough.

---

## Core Objective of Phase 1

Replace enthusiasm with structured clarity.

By the end of this phase, you should be able to write:

- A precise problem statement
- A candidate solution direction
- Defined constraints
- A chosen platform
- A summary that reflects stable understanding
- A project name that aligns with the problem

If this cannot be written clearly, the project is not ready to move forward.
