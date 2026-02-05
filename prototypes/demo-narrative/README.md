# Product Brain Demo Narrative

> **🎬 Primary Demo Entry Point** — Start here when presenting the Product Brain workflow

Interactive single-page scrolling site showcasing the Contoso Product Brain repository for conference talks and self-serve exploration. This is the flagship demo that tells the complete story from customer crisis to shipped solution.

## Live Demo

**[digitarald.github.io/product-brain/prototypes/demo-narrative](https://digitarald.github.io/product-brain/prototypes/demo-narrative/)**

Also accessible via Mission Control: **[digitarald.github.io/product-brain/prototypes](https://digitarald.github.io/product-brain/prototypes/)**

Automatically deployed to GitHub Pages on every push to `main`.

## What It Demonstrates

This prototype presents a cohesive narrative through the PM workspace:

1. **The Problem** — 68% cart abandonment, mobile UX crisis, real customer quotes
2. **Research Deep Dive** — NPS analysis, customer segments, returns insight
3. **The Solution** — Checkout redesign + Trail Rewards loyalty program
4. **Prototypes** — Embedded iframes to checkout-mockup and loyalty-v2-explainer
5. **Roadmap** — H1 2026 timeline with current progress
6. **Repository Explorer** — Links to all specs, insights, research, and analysis

## Features

- **Scroll-driven animations** — Sections reveal progressively using Intersection Observer
- **Sticky navigation** — Progress indicator shows current section
- **Real metrics** — All numbers pulled from actual spec and insight files
- **Customer quotes** — Direct verbatims from usability studies and NPS surveys
- **Embedded prototypes** — Live iframes of checkout and loyalty explainers
- **Mobile responsive** — Works on presenter screens and attendee phones
- **Conference-ready** — Large text, high contrast, works in bright rooms

## Tech Stack

Per [prototype guidelines](../../.github/instructions/prototypes.instructions.md):

- **HTML** — Single file, no build step
- **Tailwind CSS** — Via CDN
- **Alpine.js** — For interactivity
- **Google Fonts** — Outfit + Source Serif 4

## Design System

Color palette inspired by [loyalty-v2-explainer](../loyalty-v2-explainer/):

- **Background**: Dark gradient (#0a0c0a base)
- **Primary accent**: Forest green (#4ade80)
- **Secondary accent**: Ember orange (#f97316)
- **Danger**: Crimson red (#ef4444)
- **Neutral**: Sage tones (#a3aba3 family)

Visual style:
- Glassmorphism cards with subtle borders
- Gradient text highlights
- Timeline with completion states
- Progress bar on scroll

## Content Sources

Real data pulled from these repository files:

| Section | Source Files |
|---------|--------------|
| Cart abandonment stats | [specs/checkout-redesign.md](../../specs/checkout-redesign.md) |
| Mobile UX quotes | [insights/mobile-usability-study.md](../../insights/mobile-usability-study.md) |
| NPS analysis | [insights/nps-drivers-q4.md](../../insights/nps-drivers-q4.md) |
| Returns insight | [insights/returns-friction-analysis.md](../../insights/returns-friction-analysis.md) |
| Customer quotes | [insights/customer-feedback-q4.md](../../insights/customer-feedback-q4.md) |
| Roadmap timeline | [roadmap/2026-h1.md](../../roadmap/2026-h1.md) |

## Usage

### Local Development

```bash
cd prototypes/demo-narrative
python3 -m http.server 8000
# Open http://localhost:8000
```

### Conference Presentation

1. Open in full-screen browser (F11)
2. Start at hero section
3. Scroll naturally to advance through narrative
4. Use navigation links to jump between sections
5. Click prototype previews to open full-screen demos

### Self-Serve Exploration

Visitors can:
- Scroll through the full narrative
- Click embedded prototypes to interact
- Use "Explore the Repository" section to dive into source files
- Jump between sections using sticky nav

## Maintenance

To update content when spec files change:

1. Read the updated source files
2. Find corresponding sections in index.html
3. Update metrics, quotes, or timeline items
4. Test scroll animations still work

## Agent Skills Integration

This demo showcases how PM agents leverage skills:

| Agent | Skills | Demo Use Case |
|-------|--------|---------------|
| **Scaffold** | `playwright-cli`, `frontend-slides` | Built prototype mockups, verified with Playwright screenshots |
| **Diverge** | — | Explores 3 variations via cloud coding agent PRs |
| **Insight Explorer** | `playwright-cli` | Dashboard visualizations exported as shareable PNGs |
| **Research** | `playwright-cli` | Competitor checkout flows captured for analysis |
| **Data Analyst** | — | Jupyter notebooks with inline visualizations |

### Example Workflow

```bash
# Scaffold agent builds checkout mockup
# Then verifies with playwright-cli:
playwright-cli open http://localhost:8000
playwright-cli fill e3 "test@contoso.com"  # Test form
playwright-cli click e7                     # Submit button
playwright-cli screenshot --filename=prototypes/checkout-mockup/state-filled.png
```

---

*Part of the [Product Brain](../../README.md) demo workspace*
