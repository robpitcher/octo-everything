# Mobile App v3 PRD

**Status:** In Review
**Author:** Alex Rivera, PM Lead
**Last Updated:** January 28, 2026
**Stakeholders:** Mobile Engineering, Design, Platform, Marketing
**Description:** Build the next-generation native mobile app experience for outdoor gear shoppers

---

## Problem Statement

Mobile represents our largest growth opportunity, but our native app is underperforming relative to its potential:

- **45% of total traffic** comes from mobile web, but only 12% use the native app
- App users convert at **23% higher rate** than mobile web (29% vs 23.5%)
- Current app rating: 3.2 stars (iOS), 3.0 stars (Android) — primary complaints: "crashes," "outdated design," "can't use offline"
- App last major update: 18 months ago (v2.4)
- Competitors Summit Co-op and Ridgeline Outfitters both ship unified apps with native performance (see [Competitive Analysis](/insights/competitive-analysis.md))

Customer feedback indicates desire for offline functionality when camping in areas without connectivity (see [Q4 Customer Feedback](/insights/customer-feedback-q4.md)).

## Target Personas

### Alex the Weekend Warrior
- Primary mobile shopper — browses during commute, purchases on weekends
- Wants quick access to wishlists and saved items
- Needs offline access when planning trips in remote areas
- Expects seamless transition between mobile web and app

### Taylor the Trail Planner (New Persona)
- 28-40, meticulous trip preparer
- Creates gear lists weeks before trips, references them offline at campsites
- Values AR features to visualize gear (tent footprints, pack fits)
- Typical order: $300-600, multiple items per trip

## Proposed Solution

### Unified React Native Architecture
Migrate from separate iOS (Swift) and Android (Kotlin) codebases to a single React Native foundation. Benefits:
- 60% code share between platforms
- Faster feature parity (currently iOS is 3 releases ahead)
- Access to Expo ecosystem for rapid iteration

### Offline Catalog & Wishlists
- Download product catalog subset (~50MB) for offline browsing
- Full wishlist and gear list access without connectivity
- Queue purchases for sync when back online
- Last sync timestamp and data freshness indicator

### AR Gear Preview
- Tent footprint visualization using ARKit/ARCore
- Backpack fit check using body measurement estimation
- Gear size comparison (overlay product on real-world surfaces)
- Share AR screenshots to social or gear planning apps

### Performance Targets
| Metric | Current | Target |
|--------|---------|--------|
| Cold start time | 4.8s | <2s |
| Crash rate | 2.1% | <0.5% |
| App size | 148MB | <80MB |

## Success Metrics

| Metric | Current | Target | Timeframe |
|--------|---------|--------|-----------|
| App store rating | 3.1 avg | 4.5+ | 6 months post-launch |
| Mobile app MAU | 89K | 250K | 12 months |
| App conversion rate | 29% | 38% | 6 months |
| App revenue share | 8% | 18% | 12 months |
| Offline sessions | N/A | 15K/month | 3 months |

## Out of Scope

- Tablet-optimized layouts (Phase 2)
- Wearable companion app (future consideration)
- In-app purchases for digital content
- Full PWA replacement strategy

## Open Questions

1. **React Native expertise:** Do we hire or upskill existing mobile team? Current team has limited RN experience.
2. **AR conversion impact:** What's the expected conversion lift from AR features? Need UX research.
3. **Offline data limits:** How much catalog data is reasonable to cache? Storage impact on older devices?
4. **Checkout integration:** How does app checkout integrate with [Checkout Redesign](/specs/checkout-redesign.md) — shared components?

## Dependencies

- **Design:** New mobile design system (Figma) — ETA Feb 15
- **Platform:** Push notification infrastructure upgrade — in progress
- **[Checkout Redesign](/specs/checkout-redesign.md):** Express payment integrations must support native SDKs
- **[Search Personalization](/specs/search-personalization.md):** Search API must support offline-first architecture
- See [H1 2026 Roadmap](/roadmap/2026-h1.md) for sprint allocation

## Competitive Context

Summit Co-op's app has 4.8 stars with features like "Trail Running Planner" and store pickup integration. Ridgeline Outfitters's app prominently features their "Gearhead" chat. Our AR gear preview would be a differentiator — no major competitor offers this today.

## Technical Approach

Architecture will follow a modular approach:
- **Core module:** Shared business logic, API clients, caching
- **Feature modules:** Checkout, Search, AR, Offline sync
- **UI kit:** Design system components, theming

Recommended third-party packages:
- Navigation: React Navigation v6
- State: Zustand or Redux Toolkit
- AR: ViroReact or expo-three
- Offline: WatermelonDB for local persistence

---

*Architecture review scheduled Feb 5 with Mobile Engineering and Platform teams.*
