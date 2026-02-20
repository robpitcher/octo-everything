# Dark Mode PRD

- **Status:** Draft
- **Author:** Alex Rivera, PM Lead
- **Last Updated:** February 20, 2026
- **Stakeholders:** Engineering, Design, Frontend, Marketing
- **Description:** Add a dark mode theme to the Contoso storefront to improve visual comfort and align with user preferences

---

## Problem Statement

User demand for dark mode has steadily grown, and our storefront currently offers no theme alternatives. Data from Q4 2025 shows:

- **42% of support requests** mentioning UI preferences cite lack of dark mode
- 67% of users browse in the evening (7 PM–11 PM), when bright interfaces cause eye strain
- Mobile sessions after 8 PM have a **15% higher bounce rate** compared to daytime sessions
- Competitors Summit Co-op and Ridgeline Outfitters both launched dark mode in 2025 (see [Competitive Analysis](/insights/competitive-analysis.md))

Customer feedback consistently mentions "eye strain during nighttime browsing" and "wish there was a dark option" as recurring themes (see [Q4 Customer Feedback](/insights/customer-feedback-q4.md)). The [Mobile Usability Study](/insights/mobile-usability-study.md) also flagged brightness controls as a gap.

## Target Personas

### Alex the Weekend Warrior
- 35-45, suburban professional
- Browses gear on mobile during evening downtime
- Sensitive to bright screens after a long day at work
- Expects modern apps to offer dark mode by default

### Jordan the Gear Enthusiast
- 25-35, experienced outdoor athlete
- Extended browsing sessions comparing products and reading reviews
- Uses dark mode across all apps and OS-level settings
- Typical session length: 20+ minutes

## Proposed Solution

### System-Aware Theme Toggle
Implement a light/dark mode toggle that defaults to the user's OS-level preference (`prefers-color-scheme` media query). Users can manually override via a toggle in the site header.

### Dark Theme Design Tokens
Leverage the existing Adventure Editorial Dark Theme as the foundation:

| Token | Value | Usage |
|-------|-------|-------|
| Dark base | `#0a0c0a` | Page background |
| Card bg | `rgba(17, 20, 17, 0.85)` | Glass cards |
| Border | `rgba(163, 171, 163, 0.12)` | Subtle borders |
| Text primary | `#e8ebe8` | Body text |
| Text secondary | `#a3aba3` | Muted text |
| Forest | `#4ade80` | Primary accent, success, CTAs |
| Sage | `#7a9b7e` | Brand accent |
| Ember | `#f97316` | Warning, secondary CTA |
| Earth | `#8b7b6b` | Muted accents |

### Scope

**In scope:**
- Global theme toggle (header placement)
- OS preference detection and auto-switching
- Persistent theme preference (localStorage + account settings for logged-in users)
- Dark variants for all core pages: homepage, PDP, PLP, cart, checkout, account
- Product imagery remains unchanged (no filter overlays)
- Typography: Source Serif 4 (display) and Outfit (body) — same fonts, adjusted weights for contrast

**Out of scope:**
- Email template dark mode (future phase)
- Dark mode for admin/internal tools
- Dynamic image recoloring or product photo adjustments
- Third-party widget theming (reviews, chat widgets)

### Implementation Approach
- CSS custom properties (variables) for all color tokens
- Single stylesheet with `:root` and `[data-theme="dark"]` selectors
- Smooth transition animation on toggle (150ms ease)
- No JavaScript framework dependency for theme switching — vanilla JS with `localStorage`

## Success Metrics

| Metric | Current | Target | Timeframe |
|--------|---------|--------|-----------|
| Evening bounce rate (8 PM–11 PM) | 38% | <28% | 60 days post-launch |
| Avg session duration (evening) | 3.8 min | 5.5 min | 60 days post-launch |
| Dark mode adoption rate | N/A | >35% of users | 30 days post-launch |
| Customer satisfaction (UI rating) | 3.6/5 | 4.2/5 | 90 days post-launch |
| Accessibility contrast ratio | Varies | WCAG AA (4.5:1) on all text | At launch |

## Open Questions

1. **Theme persistence across devices:** Should logged-in users sync their theme preference across devices, or keep it per-device?
2. **Transition strategy:** Big-bang launch or gradual rollout with feature flag?
3. **Product imagery:** Do product images need subtle background adjustments (e.g., transparent PNGs on lifestyle shots) to look natural on dark backgrounds?
4. **Third-party widgets:** Chat widget and review embeds may not support dark mode — accept visual inconsistency or hide/restyle?
5. **Performance budget:** What is the acceptable CSS payload increase for dual-theme support?

## Dependencies

- Design: Dark theme component library and Figma tokens by March 15
- Frontend: CSS custom properties migration for existing light theme by March 1
- Engineering: Feature flag infrastructure for staged rollout
- QA: Cross-browser visual regression testing setup
- See [H1 2026 Roadmap](/roadmap/2026-h1.md) for timeline

## Competitive Context

Summit Co-op launched dark mode in Q3 2025, reporting a 22% increase in evening session duration. Ridgeline Outfitters followed in Q4 2025 with an auto-switching approach tied to OS preferences. Both implementations are CSS-variable-based with no reported performance regressions. See [Competitive Analysis](/insights/competitive-analysis.md) for details.

---

*Next review: March 1, 2026 with Design and Frontend leads*
