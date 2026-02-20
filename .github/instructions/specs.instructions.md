---
description: "Use when writing or reviewing product specs, PRDs, or feature definitions. Covers Contoso spec format and approval workflow."
applyTo: "specs/**"
---

# Contoso Spec Guidelines

## Spec Template

Every spec MUST include these metadata fields:

- `**Status:**` — Draft, In Review, or Approved
- `**Author:**` — Name and role
- `**Last Updated:**` — Date
- `**Stakeholders:**` — Teams involved
- `**Description:**` — One-sentence summary (used in the auto-generated specs index page)

Every spec MUST include these sections:

### 1. Problem Statement
- Who is affected? Reference personas from `personas/`
- What's the current pain point with quantified impact?
- Why now? What's the urgency or opportunity?

### 2. Proposed Solution
- Clear description of what we're building
- Out of scope: explicitly list what this does NOT include
- Dependencies on other teams or systems

### 3. Success Metrics
- Primary metric with target (e.g., "Reduce checkout abandonment by 15%")
- Secondary/guardrail metrics to ensure no regression
- How and when we'll measure

### 4. Open Questions
- Unresolved decisions blocking implementation
- Owner and target resolution date for each

## Review Checklist

Before requesting review:
- [ ] Linked to relevant insights in `insights/`
- [ ] Personas referenced are up-to-date
- [ ] Engineering has provided feasibility input
- [ ] Success metrics are measurable with existing instrumentation
- [ ] Risks and mitigations documented

## Approval Workflow

1. Draft → Share in #product-specs for async feedback
2. Review → Schedule 30-min sync with stakeholders
3. Approved → Move to `specs/approved/` and create implementation issues
