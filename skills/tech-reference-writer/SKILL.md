---
name: "tech-reference-writer"
description: "Use when drafting, reviewing or scoring an Agora tech reference blog post: a concept explainer, an X vs Y comparison, a troubleshooting piece, or a product-tied reference with code on voice agent technology (e.g. WebRTC vs WebSocket, turn detection, interruption handling, reducing latency)."
---

# Tech reference writer

Draft status: template A comes from one post (WebRTC vs WebSocket for voice AI agents). Template B comes from one post (Voice AI interruption handling). Items marked (provisional) get confirmed or dropped after the second post of that template.

Writes one English tech reference post for the agora.io blog. Each post exists to be found for a technical question ("WebRTC vs WebSocket for voice AI agents") and to be quoted by AI assistants. In template A the product appears in one section only. In template B it appears only in the second half.

This is NOT the scenario format (one post per demo repo, use scenario-blog-writer) and NOT the tutorial format (short intro, then code). If the request is one of those, say so and stop. Template B carries code, but it is still a reference: the code is configuration that answers the query, not a build walkthrough.

The rules are split into layers. Apply them in order. A later layer never overrides an earlier one: if search wants a claim the truth layer can't support, the claim goes.

Reference implementations: the WebRTC vs WebSocket post for template A, the Voice AI interruption handling post for template B. When unsure how a section should read, match the post for the template in use.

Workflow this skill sits in: draft, then review by a technical expert, then publish on the Agora blog. Sources are the Conversational AI for the Curious handbook, conference talks, Agora docs and public material.

## Layer 0: inputs, before writing anything

1. Pick the primary query. Use the phrase people type, including the exact connector ("vs", not "or"). Search it.
2. Read the top 4 or 5 results in full. For each, note: its stance, whether it has tables, a diagram, an FAQ, concrete numbers, and which entities it covers (protocols, products, APIs, scenarios such as telephony).
3. Write down two lists: what the top results cover that our material doesn't, and what our material has that none of them do. The second list is the reason to cite us. If it's empty, say so before drafting.
4. Pick the template, A or B (see "Template B" for the test), then the post type. The post type decides the core section:
   - Comparison (X vs Y): core is a selection table plus the reasoning.
   - Mechanism (what is X, how X works): core is a breakdown of the mechanism.
   - Troubleshooting (why X happens, how to reduce X): core is a symptom table.
   One primary type per post. At most one secondary type, and the secondary appears as a single table plus short H3s, not a second article.
5. If the material holds two topics, decide which one matches the query. That one is the core. The other goes after it under a heading of the form "What X doesn't fix" or "What most comparisons skip".
6. Run the material readiness check below and report it before drafting.

### Material readiness check

The post can only be as good as its material. The rules forbid filling gaps, so the job here is to tell June exactly what to go and get, and from whom. Never write around thin material quietly.

Mark each item ready, weak or missing:

| Check | Ready means | If not, ask for |
|---|---|---|
| Measured number | At least one figure Agora measured or can publish, with its conditions | Engineering: one before/after measurement that fits the post's claim. Name the exact test |
| Sourced numbers | At least 3 figures in total, each measured, from a primary source, or plain arithmetic | The primary source, or drop the figure |
| Drawable mechanism | Something with a spatial or sequential shape that a diagram can show | If the concept has none, say so and skip the diagram (provisional) |
| Unique angle | One thing the top results don't cover | A talk, an internal doc or an engineer who can supply it |
| Product names | Every Agora feature name in the post is cleared for public use, with a one-line definition | The owning team: can we name it, and how do we define it |
| Reviewer | A named technical reviewer and their title | The name and title |
| Real questions | FAQ questions that come from search results, competitor coverage, docs or support, not invented | Search suggestions and competitor FAQs for the query |

Then report to June before writing, in this form:

- **Verdict**: ready, or draftable with gaps, or not worth drafting yet.
- **What to get**: a numbered list she can forward as is. Each item says what, from whom, and which section or score it unlocks.
- **Effect on the post**: which sections will be thin or carry `[TBD]`, and a rough score with and without the additions.

Sort the asks into ones that block a good post (no unique angle, no reviewer) and ones that raise it (measured number, name clearance).

If June is there, ask whether to wait or draft now with placeholders. If she isn't, draft with placeholders and put the asks at the top of the reply and in the open items. Raise a gap again whenever it shows up later while drafting.

## Layer 1: truth

Hard rules. Breaking one means the draft isn't done.

- Every factual claim sits in one of three tiers, and the tier decides how it's handled:
  1. Verified this session against a primary source (official docs, a spec, a vendor's own page). Write it plainly. List the source in the publishing notes.
  2. Written from general technical knowledge and not checked. Write it, and list it in the open items as a reviewer check.
  3. About Agora and not in the public docs. Write it with an inline `[CONFIRM: ...]`.
- No invented numbers. Illustrative numbers from a demo are labelled as illustrative in the text. Arithmetic is fine if the inputs are stated.
- Facts about third-party products (an API's connection methods, a carrier's audio format) are checked against that vendor's own documentation in this session, never recalled.
- Missing things are marked, never filled: `[TBD: ...]` for reviewer title, dates, embeds and links to posts that aren't live.
- No competitor names in the body. Naming a third-party product as a neutral fact is fine (an API, a carrier). Comparing against a rival platform is not.
- The body cites few external articles. One primary-source link where it carries weight. No "further reading" list of other people's posts.
- Conference names don't appear in the body. A talk is credited through the reviewer byline.

## Layer 2: structure

Fixed order. H1 and H2s in sentence case.

| # | Section | What it must contain |
|---|---|---|
| 0 | Byline | `By June Wang. Reviewed by [name], [title]. Last updated [date].` If the engineer agrees to co-author, use `By June Wang and [name], [title].` instead: a named engineer as author earns more trust than one as reviewer |
| 1 | Direct answer | 40 to 80 words, no heading. The answer to the primary query in sentence one. One optional short paragraph of scene-setting after it. Then `[TOC: generated by the blog platform, or list the H2s as anchor links if it can't]`, spelled out so nobody reads it as content. No roadmap paragraph ("the first half of this post...") |
| 2 | What is X? / What are X and Y? | One standalone definition sentence per term. For a comparison, an attribute table with one column per option |
| 3 | How it works | An original diagram, one sentence of reading under it, and the context a reader needs to follow the core section |
| 4 | Core section | Per the post type. See below |
| 5 | Secondary section (optional) | Only when the material has a second topic. Heading names what the first topic doesn't solve. Opens with one summary table, then H3s of about 90 to 120 words each |
| 6 | How this works in Agora | The only section that mentions Agora products. What it's called, what it does, what the docs claim, each with `[CONFIRM]` where needed. Ends by saying the ideas apply to any stack |
| 7 | Practical slot (optional, provisional) | One of: a pre-ship test checklist, or common mistakes. Numbered, under 150 words, nothing that repeats the direct answer |
| 8 | FAQ | 4 to 6 questions. See layer 3 |
| 9 | Related | Agora docs, the handbook chapter (only if an English version exists), links to sibling tech references and one scenario post. Link only pages that are live. Each one that isn't goes in the open items as a link to add, in both directions, once it ships. A Related list of docs alone is fine |
| 10 | Publishing notes (internal) | See layer 5 |

Core section by type:

- Comparison: a selection table (situation, what to use, why), then why the losing option fails where it fails, then an H3 on when the losing option is the right choice. Give the answer per situation or per connection, not one winner for everything.
- Mechanism: the parts in order, each as an H3, each opening with what it does.
- Troubleshooting: a symptom table (what you see or hear, why it happens, what fixes it), then one H3 per row.

There is no Key takeaways section and no standalone numbers section. The direct answer and the FAQ do the first job. Numbers live inline and in tables.

Budgets:

- 1,500 to 2,200 words in sections 1 to 9. A single-topic post can sit at the low end.
- Say each thing once. A summary table may restate what the H3s under it explain. Nothing else repeats.
- Product mentions outside section 6: none.

## Template B: product-tied reference with code (provisional)

Use B when all three hold. Otherwise use A. Comparison posts are always A.

- The topic maps what a user hears or sees to a setting (the agent stops on "mm-hmm", so change the interruption policy).
- docs.agora.io has a feature page with parameters for it.
- A runnable recipe exists, or will before publishing.

Layers 1, 3, 4 and 5 apply unchanged. Layer 2 is replaced by this order:

| # | Section | What it must contain |
|---|---|---|
| 0 | Byline | A co-byline with an engineer where possible: `By June Wang and [engineer], [title]. Last updated [date].` Otherwise the template A byline |
| 1 | Direct answer | Same as template A |
| 2 | What is X? | Standalone definition sentences, including the field's standard terms. One attribute table |
| 3 | How it works | A diagram, then a component table: component, what it does, what you hear when it's wrong |
| 4 | Core: one scenario, N decisions | One running conversation. Each H3 is one decision and opens by naming which setting owns it |
| 5 | Symptom table | What you hear, why it happens, what to change. No H3s under it |
| 6 | How to configure X in Agora | One H3 per decision. Each has one code block of 12 lines or fewer and says what it fixes. Tables for choices between modes. Ends by saying the ideas apply to any stack |
| 7 | Try it | The recipe in 5 lines of commands or fewer, a link to the README for setup, and a table of results per mode |
| 8 | FAQ | Same as template A |
| 9 | Related | Same as template A. Leave out links to posts that aren't live, and note them in the open items |
| 10 | Publishing notes (internal) | Same as template A |

Budgets for B:

- 2,200 to 2,800 words in sections 1 to 9.
- Sections 1 to 5 carry no product mention.
- At most 4 code blocks in section 6. Install commands appear only in section 7.

Before drafting, on top of layer 0:

- Check every field name in three places: the feature docs page, the API reference, and the recipe source. Page fetches come back summarized, so also search for the exact field path. Where the three disagree, list the disagreement and ask engineering. Don't pick one.
- The recipe has to run against the current API with no edits. If it doesn't, the ask is to fix the repo. The post never carries a workaround, a pinned commit hash, or a "replace this line" step.
- Results in the Try it table are labelled as expected until someone has run them.

With the draft, deliver a numbered question list for engineering that covers every `[CONFIRM]`, written so June can forward it as is.

Not yet known: whether the core section holds up when a topic has only one or two decisions. If it comes out thin, let the symptom table carry the weight and say so.

## Layer 3: search and AI citation

- Answer first, everywhere. The lead, the first sentence under each H2, and each FAQ answer must make sense when quoted alone. Open an H2 by answering its own heading ("WebSocket breaks on the user's connection because...").
- Headings are shaped like queries. H2s and H3s use the words a searcher would use ("Why the agent mishears you on a bad network"), not narrative labels ("Choosing WebRTC is half the answer"). No internal jargon in headings.
- H1 carries the primary query word for word, then a short promise: `X vs Y for [context]: which to use, and where`.
- Title tag: primary query first, `| Agora` last, 60 characters or fewer. Same connector as the query.
- Meta description: 155 characters or fewer.
- Slug: `/blog/[primary-query-in-kebab-case]`.
- Name the standard terms. If the field has a term for the thing (head-of-line blocking, jitter buffer), use it at least once, next to the plain-language explanation.
- Tables are the most extractable unit. Every post has at least two of the three kinds: attribute table, selection table, symptom table.
- Entity coverage: every entity the top results cover gets at least a table row or an FAQ answer here, unless it's irrelevant to the query.
- FAQ rules: 4 to 6 questions, phrased the way someone would type them. Answers 40 to 80 words with the direct answer in the first sentence. The first question is the primary query in question form. At least half the questions come from what competitors answer or what search shows people ask. Don't repeat table rows.
- FAQ schema: the publishing notes carry FAQPage JSON whose answers match the visible text word for word. Any FAQ edit means regenerating the schema.
- Text carries everything. A diagram has a sentence of reading under it. An embed or demo has its result written out under it.

## Layer 4: voice

Apply the humanizer skill's shared layer and English layer to the whole post. The points that matter most here:

- No em dashes or en dashes. No poison words.
- Contractions. Second person. Plain verbs.
- Explain a mechanism through a concrete moment a reader can picture (a sentence said on a train, a word lost on "four"), not through a principle.
- No summary paragraph at the end. The post ends on Related.

## Layer 5: publishing notes block

Every draft ends with an internal section, below a divider, titled "Publishing notes (internal, delete before publishing)":

1. A table: primary query, secondary queries (4 to 7), title tag with character count, meta description with character count, slug, author and reviewer.
2. The FAQPage schema.
3. A note to add Article schema with author and publish date.
4. Sources checked this session, one line each (tier 1 facts).
5. An open-items checklist. Always include: every ask from the material readiness check that is still open, reviewer checks for every tier 2 claim, every `[CONFIRM]` and `[TBD]`, the diagram, and the before-and-after AI citation check (ask ChatGPT, Perplexity and Claude the primary query before launch and at 2 and 4 weeks, and log which pages they cite).

## Final check before delivering

Any "no" means revise first.

- Did I read the top results in this session and list what they cover that we don't?
- Did I report the material readiness check, with a forwardable list of asks?
- Is the answer to the primary query in the first sentence, in 40 to 80 words?
- Does the H1 carry the query word for word, same connector?
- Does each H2's first sentence answer its heading?
- Are there definition sentences that stand alone?
- Are there at least two tables and one diagram (or a stated reason for no diagram)?
- Is Agora mentioned only in section 6 (template A), or only from the configure section onward (template B)?
- Is every third-party fact checked against the vendor's docs this session?
- Is every unchecked technical claim listed as a reviewer check?
- Are there 4 to 6 FAQ answers of 40 to 80 words, and does the schema match them word for word?
- Zero em dashes, zero invented numbers, zero rival platform names, zero conference names in the body?
- Is the word count inside 1,500 to 2,200 (template A) or 2,200 to 2,800 (template B)?
- Template B only: was every field name checked against the docs page, the API reference and the recipe, and is there a forwardable question list for engineering?

## How this goes wrong

Each of these happened on the first post.

- Two articles in one: the query-matching half is thin and the unique half sits outside the search intent. Fix the order and the proportions, don't cut the unique half.
- The answer arrives in paragraph three, after an anecdote.
- Headings that only make sense after reading the post.
- "or" in the title when the query says "vs".
- The standard term is never named, only described.
- A prose-only comparison with no attribute table.
- FAQ answers of 25 words that can't stand alone.
- A further-reading list that sends the reader to other people's posts.
- The schema left behind after the FAQ changed.
- Unverified technical figures written as plainly as verified ones, with no reviewer flag.
- A draft that reads well and scores low on evidence because nobody asked engineering for a measurement.

These happened on the first template B post.

- Half concept piece, half install tutorial: all the code was setup commands and none of it was the configuration the post is about.
- The recipe's bugs written into the post as steps (a misspelled mode value, a field to rename by hand, a pinned commit).
- The docs page, the API reference and the recipe each naming a field differently, found only after drafting.
- Tables lost in export, leaving "use one of these values:" with nothing under it.

## Scoring a draft

When asked to rate a post, search the primary query first, then score these separately out of 10 and say what would raise each: answer-first extractability, structure against this template, uniqueness against the current top results, match to search intent, evidence, keyword and entity coverage, trust (byline, reviewer, sources).

Split the scores into two groups: what the draft can fix (answer, structure, intent, keywords) and what needs someone else (evidence, trust). For the second group, give the ask and who to send it to. Report page quality and the odds of being found as two different things. The second depends on domain, links and distribution, which the draft can't fix.

When the draft still carries `[CONFIRM]` marks, give two numbers: the score if every mark is confirmed as written, and the score if it ships with them open. Unverified configuration on the official blog costs more than a missing section. Rescore after each round of answers and say which item moved which number.

Include a competitor table: page, stance, what it does well, what it lacks.