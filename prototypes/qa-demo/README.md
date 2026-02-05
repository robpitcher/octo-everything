# Agentic QA Demo: Automated Prototype Auditing

> Demonstrates using `playwright-cli` to automatically validate generated prototypes

## Overview

This demo shows how AI can audit prototypes for brand compliance, accessibility, and functional correctness using the `playwright-cli` skill.

**Target:** [Checkout Mockup](../checkout-mockup/index.html) at `http://localhost:8000`

---

## Quick Start

```bash
# 1. Start the prototype server
cd prototypes/checkout-mockup && python3 -m http.server 8000

# 2. Ask Copilot to audit (see prompts below)
```

---

## Example Prompts

### 1. Brand Color Audit

```
Audit the checkout prototype at http://localhost:8000 for Contoso brand compliance.

Verify these colors are present:
- Sage: #7a9b7e (primary buttons, accents)
- Earth: #8b7b6b (secondary elements)
- Cream: #fefcf7 (background)

Take a screenshot and report any violations.
```

**Expected Workflow:**
```bash
playwright-cli open http://localhost:8000
playwright-cli snapshot
playwright-cli eval "getComputedStyle(document.querySelector('.btn-primary')).backgroundColor"
playwright-cli screenshot --filename=brand-audit.png
```

---

### 2. Accessibility Check

```
Check the checkout mockup at http://localhost:8000 for accessibility issues.

Verify:
- All form inputs have labels
- Buttons have visible text or aria-labels
- Color contrast meets WCAG AA
- Keyboard navigation works through all sections
```

**Expected Workflow:**
```bash
playwright-cli open http://localhost:8000
playwright-cli snapshot
playwright-cli eval "document.querySelectorAll('input:not([aria-label]):not([id])').length"
playwright-cli press Tab
playwright-cli press Tab
playwright-cli snapshot
```

---

### 3. Guest Checkout Flow Validation

```
Test the guest checkout flow at http://localhost:8000.

Complete these steps:
1. Fill shipping address with test data
2. Continue to billing (use same as shipping)
3. Select Apple Pay as payment
4. Verify order review shows correct info
5. Place order and confirm success state
```

**Expected Workflow:**
```bash
playwright-cli open http://localhost:8000
playwright-cli snapshot

# Fill shipping
playwright-cli fill e5 "742 Evergreen Terrace"
playwright-cli fill e7 "Springfield"
playwright-cli fill e9 "OR"
playwright-cli fill e11 "97477"
playwright-cli fill e15 "test@example.com"
playwright-cli fill e17 "(555) 123-4567"
playwright-cli click e19  # Continue to Billing

# Billing (same as shipping toggle is default)
playwright-cli snapshot
playwright-cli click e25  # Continue to Payment

# Payment
playwright-cli snapshot
playwright-cli click e30  # Select Apple Pay
playwright-cli click e40  # Review Order

# Review and place
playwright-cli snapshot --filename=review-state.png
playwright-cli click e50  # Place Order

# Verify success
playwright-cli snapshot --filename=success-state.png
playwright-cli eval "document.querySelector('.success-icon') !== null"
```

---

### 4. Combined Audit Prompt

```
Run a full QA audit on the Contoso checkout prototype at http://localhost:8000:

1. **Brand Compliance**: Verify Sage (#7a9b7e), Earth (#8b7b6b), Cream (#fefcf7) colors
2. **Accessibility**: Check form labels, keyboard nav, focus states
3. **Functional Test**: Complete guest checkout happy path
4. **Screenshots**: Capture key states (initial, review, success)

Report findings with pass/fail for each category.
```

---

## Expected Output

A successful audit produces:

| Check | Status | Notes |
|-------|--------|-------|
| Sage color on CTA | ✅ Pass | `#7a9b7e` on `.btn-primary` |
| Cream background | ✅ Pass | `#fefcf7` on body gradient |
| Form labels present | ✅ Pass | All inputs labeled |
| Guest flow completes | ✅ Pass | Order confirmation shown |
| Screenshots captured | ✅ Pass | 3 files saved |

---

## Artifacts

After running audits, screenshots are saved to:
- `brand-audit.png` - Initial page state
- `review-state.png` - Order review step
- `success-state.png` - Confirmation message

---

## Integration Notes

- **CI/CD**: These audits can run in headless mode for automated prototype validation
- **Spec Linking**: Link audit results back to [checkout-redesign spec](../../specs/checkout-redesign.md)
- **Regression**: Re-run after prototype changes to catch visual regressions

---

*Part of [Product Brain](../../README.md) agentic workflows demo*
