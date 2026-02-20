# Returns Experience PRD

- **Status:** Draft
- **Author:** Sarah Chen, Product Manager
- **Last Updated:** January 25, 2026
- **Stakeholders:** Customer Success, Operations, Engineering, Finance
- **Description:** Simplify and accelerate the returns and exchanges process

---

## Problem Statement

Our returns process is a significant detractor to customer satisfaction and lifetime value:

- **Average return processing time: 14 days** (industry benchmark: 5-7 days)
- Returns NPS: **-12** (vs. +45 for overall brand experience)
- 23% of return initiators don't complete the flow — abandonment mid-process
- "Where's my refund?" is our #1 support inquiry (31% of tickets)
- 18% of first-time buyers who return never purchase again

Customer feedback is stark: "I love Contoso's products but will never order again after that return nightmare" (see [Q4 Customer Feedback](/insights/customer-feedback-q4.md)).

## Target Personas

### Alex the Weekend Warrior
- Time-strapped, expects PrimeGear-like convenience
- Frequently orders multiple sizes to try, returns what doesn't fit
- Will choose competitor if return friction is too high
- Expects refund within days, not weeks

### Jordan the Gear Enthusiast
- Sees returns as acceptable part of dialing in gear
- More likely to exchange than refund
- Values being able to speak with someone about fit/alternatives
- Open to keeping item if given option (discount, store credit)

## Proposed Solution

### Self-Service Returns Portal
Replace email/phone process with end-to-end digital flow:
- Instant return authorization (no approval wait)
- Choose: return for refund, exchange, or store credit
- Printable/QR code labels for carrier drop-off
- Drop-off location finder (UPS, USPS, Walgreens, etc.)
- Real-time tracking with push notifications

### Instant Refund Program
For trusted customers (based on purchase history, account age, return frequency):
- Refund issued when carrier scan confirms package receipt
- No wait for warehouse processing and inspection
- Reduces refund time from 14 days to 2-3 days
- "Trust tier" visible in account (encourages loyalty)

### Smart Return Flow
Intelligent branching based on return reason:
- **Size issue:** Suggest exchange, offer fit guidance, link to [mobile sizing tools](/specs/mobile-app-v3.md)
- **Changed mind:** Offer store credit with 10% bonus
- **Defective item:** Expedited replacement, no return required for low-value items
- **Gift return:** Enable recipient-initiated returns without purchaser involvement

### Gear Trade-In Option
Integrate with [Sustainability Dashboard](/specs/sustainability-dashboard.md) trade-in program:
- During return flow, offer trade-in value estimate for used but functional gear
- "Your item still has life — trade it in for $X credit?"
- Supports sustainability messaging and reduces waste

## Success Metrics

| Metric | Current | Target | Timeframe |
|--------|---------|--------|-----------|
| Avg return-to-refund time | 14 days | 4 days | 90 days |
| Returns NPS | -12 | +20 | 6 months |
| Return flow completion | 77% | 95% | 90 days |
| "Where's my refund?" tickets | 31% | <10% | 90 days |
| Post-return repeat purchase | 82% | 92% | 6 months |

## Out of Scope

- In-store returns (working with Retail team on separate initiative)
- International returns (complex customs, Phase 2)
- Automated return inspection with computer vision (future exploration)

## Financial Impact

| Scenario | Est. Impact |
|----------|-------------|
| Instant refund fraud risk | ~0.3% increase in fraud loss |
| Store credit conversion (vs. refund) | +$2.4M annual retained revenue |
| Repeat purchase rate improvement | +$1.8M annual LTV |
| Support ticket reduction | -$340K annual labor cost |

## Return Policy Adjustments

To support new experience, recommend policy changes:
- Extend return window from 30 → 60 days (competitive parity)
- Allow returns without receipt using order lookup by email
- Worn gear returnable if defective (clear policy, no judgment)

## Open Questions

1. **Instant refund threshold:** What history/value cutoff for trust tier? Risk modeling needed.
2. **Carrier negotiation:** Can we get better rates for higher volume consolidated returns?
3. **Exchange inventory:** How to guarantee exchange item availability? Reserve stock?
4. **Fraud vectors:** How do we detect organized return fraud (wardrobing, etc.)?

## Dependencies

- **Operations:** New warehouse return processing SLA — in negotiation
- **Customer Success:** Support script updates, training content
- **[Checkout Redesign](/specs/checkout-redesign.md):** Guest orders need returns path (email lookup)
- **[Loyalty v2](/specs/loyalty-program-v2.md):** Store credit → Trail Points conversion rate
- **[Sustainability Dashboard](/specs/sustainability-dashboard.md):** Trade-in integration during return flow
- **Finance:** Instant refund cash flow impact approval

## Technical Requirements

### Integration Points
- OMS: Return authorization and inventory updates
- Payment gateway: Refund processing API
- Carrier APIs: Label generation (UPS, USPS, FedEx)
- CRM: Customer communication triggers
- Fraud detection: Return pattern analysis

### Data & Analytics
- Return reason taxonomy (standardize across channels)
- Return rate by product, category, customer segment
- Cost-per-return tracking by return method

## Competitive Context

| Feature | Summit Co-op | Alpine Trailwear | Ridgeline Outfitters | Contoso (Proposed) |
|---------|-----|-----------|-------------|--------------------|
| Return window | 1 year | Lifetime (defects) | Lifetime | 60 days |
| Self-service portal | ✓ | ✓ | ✓ | ✓ (new) |
| Instant refund | ✓ (members) | ✗ | ✗ | ✓ (trust tier) |
| Trade-in option | ✓ | ✓ (Worn Wear) | ✗ | ✓ (new) |

Our instant refund + trade-in combination would be a competitive differentiator.

---

*Awaiting Operations SLA commitment and Finance approval on instant refund model. Target review: Feb 8.*
