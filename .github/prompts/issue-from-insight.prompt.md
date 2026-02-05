---
description: "Create a well-structured GitHub Issue from a product insight with proper labels and context"
agent: "agent"
tools: ['read', 'agent', 'search', 'github/*']
---

# Insight to GitHub Issue

Convert a product insight into an actionable, well-documented GitHub Issue enriched with related documentation context.

## Input

Specify the insight document from `insights/` to convert.

## Process

1. **Read** the insight document thoroughly

2. **Gather Related Context** via subagent — deploy a read-only research subagent to discover related documentation:

   ```
   Run the "Explore" subagent with this prompt:

   Research related documentation for the insight: {insight_path}

   Tasks:
   1. Parse all markdown links [text](path) from the insight
   2. Read each linked document (specs, research, other insights)
   3. Extract from linked docs:
      - Status (Draft/Review/Approved)
      - Open questions
      - Key data points or quotes
      - Success metrics
   4. Semantic search for related content using insight themes:
      - Search specs/ for matching problem areas
      - Search research/ for supporting data
      - Search roadmap/ for timeline context
      - Search insights/ for related themes (deduplication check)
   5. Return structured summary:
      - Linked documents: [{path, status, open_questions, key_points}]
      - Discovered related: [{path, relevance, excerpt}]
      - Roadmap alignment: {initiative, timeline, conflicts}
      - Related insights: [{path, overlap_summary}]

   Thoroughness: medium
   ```

3. **Extract** the core problem or opportunity

4. **Formulate** as an actionable issue:
   - Clear, specific title (not vague like "Improve checkout")
   - Problem statement with user impact
   - Supporting evidence from the insight (quotes, data)
   - Additional evidence from related research (via context gathering)
   - Proposed approach or acceptance criteria
   - Open questions inherited from related specs
   - Roadmap alignment notes (existing initiatives, timeline)

5. **Add context** linking back to the insight doc and related documentation

6. **Suggest labels** based on content:
   - Type: `enhancement`, `bug`, `research`
   - Area: `checkout`, `onboarding`, `loyalty`, `search`
   - Priority: `p0-critical`, `p1-high`, `p2-medium`

7. **Create** the issue via GitHub API

## Output

A GitHub Issue with:

- **Title**: Action-oriented, scannable
- **Body**: Context, evidence, and proposed solution
- **Labels**: Appropriate categorization
- **Related Documentation**: Links to specs, research, roadmap items discovered
- **Open Questions**: Inherited from related specs (if applicable)
- **See Also**: Other insights covering related themes
- **Footer**: Link to source insight for traceability

Example title format: "Reduce checkout friction: Add guest checkout option"

### Example Issue Body Structure

```markdown
## Problem

{Problem statement with user impact}

## Evidence

**From insight:**
- {Quote or data point from source insight}

**From related research:**
- {Supporting data discovered via context gathering}

## Proposed Solution

{Acceptance criteria or approach}

## Open Questions

- {Inherited from related spec, if any}

## Related Documentation

- Spec: [Checkout Redesign](/specs/checkout-redesign.md) (Status: Review)
- Research: [Gen Z Outdoor Trends](/research/gen-z-outdoor-trends.md)
- Roadmap: Aligns with 2026-H1 checkout initiative

## See Also

- [Mobile Usability Study](/insights/mobile-usability-study.md) — overlapping mobile checkout findings

---
Source: [Customer Feedback Q4](/insights/customer-feedback-q4.md)
```
