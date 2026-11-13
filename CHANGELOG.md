# Changelog

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
