# Context Discipline

The primary enemy of AI-assisted software engineering is not hallucination.

It is context rot.

---

## What Is Context Rot?

Context rot occurs when accumulated conversational state degrades structural coherence.

Symptoms include:

- Drift from the original problem definition
- Inconsistent naming conventions
- Silent architectural shifts
- Redundant abstractions
- Scope expansion without explicit intent
- Reintroduction of previously rejected decisions

It is rarely obvious.
It accumulates gradually.

---

## The Context Tension

Too little context produces hallucination.

Too much context produces diffusion.

The AI Native Software Engineer must manage the balance.

The objective is not maximum context.
The objective is relevant, structured context.

---

## Why It Happens

Large language models:

- Weigh recent tokens more heavily
- Compress earlier instructions
- Approximate intent probabilistically
- Optimize for immediate coherence

Long sessions amplify entropy.

Unstructured sessions accelerate decay.

---

## Structural Defenses Against Context Rot

This framework introduces deliberate countermeasures:

### 1. Artifact Persistence

Move intent from conversation into durable files:

- `docs/plan.md`
- `docs/progress.md`
- `docs/project-guidelines.md`
- `docs/technical-debt.md`

Conversation is volatile.
Artifacts are stable.

---

### 2. Explicit Summarization

Regularly request structured summaries of:

- Current scope
- Architectural decisions
- Phase boundaries

Summarization resets coherence.

---

### 3. Phase Boundaries

Each phase introduces a structural checkpoint.

You do not carry unbounded conversational drift into execution.

---

### 4. Pause Discipline

During implementation:

- Stop after major batches.
- Summarize changes.
- Validate behavior.
- Commit explicitly.

Pauses prevent entropy acceleration.

---

### 5. Plan Re-Loading

When sessions grow long:

- Re-provide `docs/plan.md`
- Re-provide `docs/project-guidelines.md`
- Re-anchor the conversation explicitly

Never assume persistent alignment.

---

## The Rule

Context must be curated.

Do not maximize tokens.
Maximize signal.

The model does not manage coherence.
You do.

---

## Final Principle

The cost of code decreases.

The cost of unmanaged context increases.

Engineering in the AI-native era is the discipline of context control.

---

Related documents:
- [framework-overview.md](./framework-overview.md)
- [Phase 4 — Controlled Implementation](./phases/04_controlled-implementation-and-validation.md)
