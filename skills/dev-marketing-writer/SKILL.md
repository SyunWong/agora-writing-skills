---
name: dev-marketing-writer
description: Frameworks, narrative structures, and templates for writing developer-facing marketing content, distilled from how Vercel, Supabase, Linear, Resend, Cursor, and Stripe write. Covers X (Twitter) posts, launch blog posts, changelogs, thought leadership essays, and launch week plans. Use this skill whenever the user wants to write, draft, review, improve, or plan ANY content aimed at developers — product announcements, feature launches, API/SDK launch copy, dev tool positioning, launch weeks, founder posts, developer-facing social or blog content — even if they never say the word "marketing". Especially relevant for Voice AI / API product content.
---

# Developer Marketing Writer

Write developer-facing content the way the best dev tool companies do. The patterns here are distilled from primary-source analysis of Vercel, Supabase, Linear, Resend, Cursor, and Stripe — companies whose content developers actually read, share, and trust.

The single most important idea: **developers don't trust marketing, they trust artifacts.** A working demo, a code snippet, a benchmark number, a call recording. Everything in this skill flows from that.

## Workflow

1. **Identify the content type** the user needs (see routing table below).
2. **Gather inputs before writing.** Missing inputs produce generic content. Ask for what's missing:
   - What shipped / what's the idea? What can a developer *do now* that they couldn't before?
   - What artifact exists? (demo video, code snippet, benchmark, live playground, phone number to call)
   - Any real numbers? (latency ms, cost reduction %, adoption stats, internal dogfooding results)
   - What came before? (previous launches this connects to — for narrative continuity)
   - Who is the narrator? (company account, founder personal account, the engineer who built it)
3. **Read the matching reference file** for detailed structure and examples.
4. **Draft, then run the quality checklist** (bottom of this file) before delivering.
5. **Offer variants**, not just one draft — e.g. a tighter version and a more narrative version.

## Routing table

| User needs | Structure to use | Reference file |
|---|---|---|
| Launch/feature announcement on X | Launch tweet formula | `references/x-playbook.md` |
| Founder story post on X | Founder narrative arc | `references/x-playbook.md` |
| Milestone/metric post on X | Data + take | `references/x-playbook.md` |
| "Introducing X" launch blog post | 6-beat launch narrative | `references/blog-playbook.md` |
| Changelog / release notes | Linear-Resend changelog model | `references/blog-playbook.md` |
| Thought leadership essay | Contrarian-reframe essay | `references/blog-playbook.md` |
| Launch week / launch campaign plan | Campaign choreography | `references/launch-campaign.md` |
| "How does company X do it?" | Case-by-case breakdown | `references/case-studies.md` |

## The 8 principles (apply to everything)

1. **Show the thing.** Every piece of content contains at least one artifact: demo video, code snippet, benchmark, live link. If no artifact exists yet, flag this to the user — creating one is higher-leverage than polishing copy. For Voice AI: the artifact is *audio* — a call recording, a live demo number, a latency trace. Latency and naturalness must be heard, not described.

2. **Lead with capability, not feature name.** Linear rewrites "New: Batch operations for issues" into "Move, label, or close multiple issues at once." First line = what the developer can now do, in plain words.

3. **Builders narrate, founders amplify.** The engineer who built it writes the deep dive (Supabase's rule — that's why their content has real technical depth). The founder tells the story on their personal account (Zeno Rocha's account often outperforms Resend's company account). The company account stays product-focused and lets visuals carry.

4. **Specificity is credibility.** Real numbers ("cut compute costs by up to 85%" — Vercel; "resolves ~30% of incoming bug reports" — Linear), correct jargon (tribal signal — it tells developers "we are one of you"), named customers. Delete every unverifiable adjective: seamless, powerful, revolutionary, blazing-fast, game-changing, enterprise-grade.

5. **Every launch is a chapter.** Open with continuity: "Earlier this year we launched X. Then we added Y. Today we're closing the loop." (Linear's coding sessions launch.) Each release should link backward to prior work and gesture forward. This compounds narrative, SEO, and perceived momentum.

6. **Launch things more than once.** Ship quietly to existing users early; launch loudly to the world later. Supabase re-announces features during Launch Week that shipped weeks earlier — "you can launch a feature many times over and always reach people who forgot, ignored, or just plain missed it." Your reach is smaller than you think.

7. **Match channel to content.** UI/design feature → Product Hunt, design communities. Infrastructure deep-dive → Hacker News, engineering channels. API/SDK → X + docs + dev newsletters. (Supabase marketed their UI library and their storage engine through completely different channels.)

8. **Community is the amplifier.** Retweet users' wins, credit contributors, acknowledge prior art (Vercel's Fluid compute post credits Google Cloud Run — humility reads as confidence). The reply section and quote tweets are part of the content.

## Quick templates

**Launch tweet (company account):**
```
[What developers can now do — one plain sentence, no adjectives]

[3–5 short lines of specific capabilities, one per line]

[Artifact: demo video / code snippet image / call recording]
[Link — last line or first reply]
```

**Launch blog title:** `Introducing [X]: [benefit clause]` — e.g. "Introducing Fluid compute: The power of servers, in serverless form"

**Changelog entry lead:** `[Continuity sentence linking prior releases]. Today [bold one-line announcement of the new capability].`

## Voice AI context

When writing for a Voice AI product, ground content in the metrics and artifacts this audience cares about:
- **Latency**: time-to-first-audio in ms (the number developers screenshot and share)
- **Conversation quality**: turn-taking, interruption handling, naturalness — prove with recordings, never adjectives
- **Integration friction**: lines of code to first call, SDK languages, telephony/WebRTC support
- **Cost**: price per minute, concurrency limits
- Best artifacts, in rough order of shareability: a phone number anyone can call right now → a <60s demo video of a live conversation → a 5-line code snippet that starts a call → a latency benchmark chart

## Quality checklist (run before delivering any draft)

- [ ] Can a developer tell within 5 seconds what they can now *do*?
- [ ] Is there at least one artifact (demo / code / number / recording)? If not, flagged to user?
- [ ] Zero unverifiable adjectives? (Would a senior engineer wince at any word?)
- [ ] Are all numbers real, sourced from the user — never invented?
- [ ] Does it connect to the larger product story (backward link, forward gesture)?
- [ ] Is the CTA one step, zero friction? ("Enable it in settings — no migration, no config" beats "Contact us")
- [ ] Right narrator? (deep dive = builder; story = founder; announcement = company)
- [ ] For X: is the visual doing the selling, with copy staying out of its way?

Never invent metrics, customer names, or testimonials. If the user has none, say so and suggest how to get them (dogfooding stats are the easiest first proof — "we use this internally to do X").
