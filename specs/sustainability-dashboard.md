# Sustainability Dashboard PRD

**Status:** Approved
**Author:** Marcus Webb, Product Manager
**Last Updated:** January 30, 2026
**Stakeholders:** Sustainability Team, Marketing, Engineering, Legal
**Description:** Provide customers transparency into eco-impact and product certifications

---

## Problem Statement

Sustainability is core to Contoso's brand promise, but customers can't see or quantify our environmental impact:

- **68% of surveyed customers** say sustainability influences their purchase decisions
- Only 23% of customers know Contoso offsets shipping emissions for every order
- 40% of our catalog is eco-certified, but discovery is buried in filters
- Competitor Alpine Trailwear's "Worn Wear" and Summit Co-op's "Used Gear" programs drive significant brand loyalty (see [Competitive Analysis](/insights/competitive-analysis.md))
- Q4 feedback explicitly requested "show me my impact" features

Our sustainability story is hidden. This spec proposes making it visible and personal.

## Target Personas

### Jordan the Gear Enthusiast
- Deeply values environmental responsibility — willing to pay premium for sustainable options
- Wants to quantify personal impact to share on social and justify purchases
- Interested in gear longevity, repairability, and end-of-life options

### Morgan the Conscious Consumer (New Persona)
- 25-45, urban professional, newer to outdoor activities
- Chooses brands that align with personal values
- Active on social media, shares brand partnerships that reflect identity
- First purchase often driven by sustainability positioning

## Proposed Solution

### Personal Impact Dashboard
Member-only dashboard showing:
- **Lifetime CO2 offset:** Total emissions avoided through purchases
- **Eco-certified purchases:** Count and percentage of cart
- **Trees planted equivalent:** Partnerships with reforestation programs
- **Plastic avoided:** Packaging and product material impact
- Shareable "Impact Card" for social media

### Eco-Discovery Experience
- Homepage "Sustainable Picks" carousel, personalized by browse history
- Search filter for eco-certified products surfaced prominently (not buried)
- PDP badges: Certified B Corp, Fair Trade, Recycled Materials, Carbon Neutral
- "Greener Alternatives" suggestions on non-certified product pages

### Carbon Offset Calculator
- Pre-purchase: "Your order will offset X kg of CO2"
- Post-purchase: Detailed breakdown of shipping + manufacturing impact
- Optional carbon-positive upgrade at checkout (+$2 to triple offset)

### Gear Trade-In Program
Expansion of existing program with clearer value proposition:
- Instant trade-in value estimate using product condition wizard
- Credit applied to loyalty account (bonus Trail Points per [Loyalty v2](/specs/loyalty-program-v2.md))
- Tracking for traded gear: refurbished and resold vs. recycled

## Success Metrics

| Metric | Current | Target | Timeframe |
|--------|---------|--------|-----------|
| Sustainability awareness | 23% | 65% | 6 months |
| Eco-certified product share of revenue | 31% | 45% | 12 months |
| Carbon offset upgrade adoption | N/A | 12% of orders | 6 months |
| Trade-in program participation | 2.3% of members | 8% | 12 months |
| Dashboard engagement | N/A | 40% of members/month | 6 months |

## Out of Scope

- Supplier sustainability auditing tools (internal ops project)
- Real-time supply chain emissions tracking (technology not ready)
- Carbon credit purchasing/sale platform (regulatory complexity)

## Legal & Compliance Considerations

- All environmental claims must be verifiable and documented
- "Carbon neutral" claims require third-party certification (Climate Neutral pending)
- Trade-in program requires clear terms for item valuation disputes
- GDPR considerations for tracking personal sustainability data

## Implementation Phases

### Phase 1: Foundation (Q1 2026)
- Eco-badge system on PDPs
- Basic Impact Dashboard (member profile page)
- "Sustainable Picks" homepage module

### Phase 2: Engagement (Q2 2026)
- Carbon offset calculator and checkout upgrade option
- Shareable Impact Cards
- Greener Alternatives recommendations

### Phase 3: Circularity (Q3 2026)
- Enhanced trade-in program with condition wizard
- Integration with [Loyalty v2](/specs/loyalty-program-v2.md) Trail Points
- Refurbished gear storefront

## Open Questions

1. **Data accuracy:** How do we calculate manufacturing carbon footprint without supplier data? Use industry estimates?
2. **Greenwashing risk:** Legal review of all claims language — what can we say vs. imply?
3. **Trade-in logistics:** In-house or partner with established resale platform (ThredUp, etc.)?

## Dependencies

- **Sustainability Team:** Product certification data cleanup by Feb 15
- **[Loyalty v2](/specs/loyalty-program-v2.md):** Trail Points integration for trade-in rewards
- **[Search Personalization](/specs/search-personalization.md):** Eco-product boost in personalized rankings
- **Marketing:** Brand messaging alignment on sustainability claims
- **Legal:** Claims review and approval (ongoing)

## Competitive Opportunity

This initiative positions Contoso between:
- Summit Co-op's practical sustainability (used gear, rental program)
- Alpine Trailwear's activist sustainability (Worn Wear, political advocacy)

Our angle: **quantified, personal sustainability** — helping customers understand and share their individual impact. No competitor currently offers a personal impact dashboard with this level of detail.

---

*Approved by Sustainability Committee Jan 28. Engineering kickoff scheduled Feb 3. Phase 1 target: March 31.*
