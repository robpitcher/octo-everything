# Search Personalization PRD

**Status:** Draft
**Author:** Jordan Kim, UX Researcher (Acting PM)
**Last Updated:** January 22, 2026
**Stakeholders:** Engineering, Data Science, Merchandising, UX
**Description:** Add AI-powered search and personalized product discovery

---

## Problem Statement

Product discovery is our biggest missed conversion opportunity. Current search infrastructure fails to connect customers with relevant products:

- **34% search bounce rate** — users search, see results, and leave
- Search-to-purchase conversion: only 8.2% (industry leader: 15%)
- Zero-result rate: 12% of searches return nothing useful
- "null search" is our #5 exit page
- 67% of search queries are 1-2 words — high ambiguity with no personalization

User research confirms frustration: "I searched for 'tent' and got 847 results with no way to narrow down what I actually need" (see [Q4 Customer Feedback](/insights/customer-feedback-q4.md)).

## Target Personas

### Jordan the Gear Enthusiast
- Knows exactly what they want — uses specific product names/model numbers
- Frustrated when search doesn't understand technical terminology ("3-season," "20L capacity")
- Expects search to remember preferences (brand affinity, size, activity type)

### Casey the Casual Shopper (New Persona)
- 30-50, occasional camper or hiker
- Doesn't know gear terminology — searches "stuff for camping trip" or "waterproof jacket"
- Needs guided discovery, not just keyword matching
- Typical order: $75-200, often first-time or annual purchaser

## Proposed Solution

### Semantic Search Engine
Replace keyword-matching Elasticsearch with vector-based semantic search:
- Understand intent behind queries ("warm sleeping bag for winter" vs "0-degree rated")
- Query expansion using product attributes and synonyms
- Typo tolerance and phonetic matching
- Natural language processing for filter extraction ("under $200" → price filter)

### Personalized Rankings
Machine learning ranking model incorporating:
- Purchase history and browse behavior
- Explicit preferences (saved sizes, favorite brands, activity types)
- Similar customer cohort signals
- Real-time session context (cart contents, viewed items)

### Visual Search
Camera-based product identification:
- Point at gear you own or see, find similar products
- Screenshot upload from other apps/websites
- "Complete the look" recommendations from visual context

### Smart Autocomplete
- Personalized suggestions based on history
- Trending searches within user's interest categories
- Recent search recall with one-tap filters

## Success Metrics

| Metric | Current | Target | Timeframe |
|--------|---------|--------|-----------|
| Search bounce rate | 34% | <18% | 90 days |
| Search conversion | 8.2% | 14% | 6 months |
| Zero-result rate | 12% | <3% | At launch |
| Avg time to first add-to-cart | 4.2 min | <2.5 min | 90 days |
| Visual search adoption | N/A | 10% of mobile searches | 6 months |

## Out of Scope

- Voice search (Phase 2, dependent on voice assistant integrations)
- B2B/wholesale search experience
- Content search (articles, guides) — separate initiative

## Technical Approach

### Search Infrastructure
- **Vector database:** Pinecone or Weaviate for embedding storage
- **Embedding model:** Fine-tuned Sentence-BERT on outdoor gear terminology
- **Ranking:** XGBoost ensemble with real-time feature serving (Feast)
- **Visual search:** CLIP model for image-to-product matching

### Personalization Data Flow
1. Events stream to Kafka from web/mobile/app
2. Feature store computes user preference vectors hourly
3. Search service blends personal + global signals at query time
4. A/B framework measures impact per ranking variant

## Open Questions

1. **Privacy concerns:** How do we explain personalization to users? Opt-out mechanism needed?
2. **Cold start:** What's the experience for new/anonymous users? Category-based defaults?
3. **Merchandising override:** Can merchants boost products for campaigns without breaking personalization?
4. **Index freshness:** How quickly do new products appear in semantic search? Current lag is 4 hours.

## Dependencies

- **Data Science:** ML model training capacity — need GPU allocation
- **[Mobile App v3](/specs/mobile-app-v3.md):** Visual search requires native camera integration
- **[Checkout Redesign](/specs/checkout-redesign.md):** Consistent "quick add" experience from search results
- **Merchandising:** Product attribute cleanup — current catalog has 23% missing attributes

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| Personalization feels "creepy" | Medium | High | Transparent "Why am I seeing this?" UI |
| ML model bias toward popular items | High | Medium | Cold-start product boost, fairness audit |
| Visual search accuracy issues | Medium | Medium | Confidence threshold, fallback to text |

## Related Initiatives

- This spec enables smarter search within [Mobile App v3](/specs/mobile-app-v3.md)
- Personalization signals will improve [Loyalty Program v2](/specs/loyalty-program-v2.md) recommendations
- Search data feeds into [Sustainability Dashboard](/specs/sustainability-dashboard.md) for eco-product discovery

---

*Draft pending Data Science review. Architecture spike proposed for Feb 10-14.*
