# Changelog

## 2026-11-15 (2)

- New skill `content-reviewer`: an independent reviewer that scores a draft out of 100 (needs met, main content quality, trust, findable and citable, voice), applies caps, and returns a fix list ranked by points gained with an owner for each fix. Rubric follows Google's helpful-content guidance and the Search Quality Rater Guidelines. Weights are provisional until five published pieces can be compared with results.
- `AGENTS.md`: added the five-stage content workflow (brief, draft, review, revise, publish and check). The writer no longer scores its own draft.

## 2026-11-15

Shared agent context:

- Added `AGENTS.md`, `context/` (positioning, messaging, audience, voice), `state/priorities.md` and `decisions/log.md`, so OpenClaw, Codex and Claude start from the same facts and handoffs stop depending on pasted prompts.

`reddit-writer`:

- Post types, comment types and posting notes are now sections in `SKILL.md`. The three reference files it pointed to were never written, and a single file keeps the copy in Claude and the copy here identical.
- Added patterns learned from real posts: updates to an earlier post, me-too replies, joke replies in hobby subreddits, permission asks.
- "Soft-promote reply" became "reply that mentions your own build", with no name, to match the no-brand rule.

New skills:

- `work-message-polish`: short messages to colleagues. Six layers (job, facts, the ask, what stays inside the team, voice, length) and a delivery format that keeps required fixes apart from optional style changes.
- `launch-video`: promo videos for launches. Storyboard-first process, the house look settled on the toolkit video with its rejected list, and render notes. Provisional.

## 2026-11-13 (2)

`reddit-writer`:

- Rewrote the description as a trigger. The old one was a change note and gave Claude nothing to match a request against.
- Added a no-brand hard constraint: no Agora name, product, domain or org repo in any post or comment, because an earlier account was banned for it. Replaced the old "disclose and recommend alternatives" rule, which contradicted this.
- Added the check to the checklist and the verification list.
- Step 2 now says what to do while the three reference files are missing.

## 2026-11-13

First commit. Five skills: `tech-reference-writer`, `scenario-blog-writer`, `dev-marketing-writer`, `reddit-writer`, `humanizer`.

`tech-reference-writer`, from the Voice AI interruption handling post:

- Added template B: a product-tied reference with config code and a recipe. Covers when to use it, section order, a 2,200 to 2,800 word budget, checking field names in the docs page, API reference and recipe before drafting, and a question list for engineering delivered with the draft. Provisional.
- Byline: an engineer can co-author instead of review.
- Direct answer: the table-of-contents placeholder is spelled out so it isn't read as content.
- Related: link only live pages, and log the rest as links to add in both directions.
- Scoring: with open `[CONFIRM]` marks, give the score as written and the score if it ships unconfirmed.
- Four new entries in "How this goes wrong".
