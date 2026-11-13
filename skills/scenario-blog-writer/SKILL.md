---
name: "scenario-blog-writer"
description: "Use when drafting, reviewing or scoring an Agora voice agent scenario blog post (the Top 10 use-case series, e.g. customer support, hotel reception) or planning how to publish and distribute one."
---

# Scenario blog writer

Writes one English blog post per voice agent scenario repo (the Top 10 series). Each post exists to be found for a scenario search phrase ("customer support voice agent") and to be quoted by AI assistants, then to get the reader to run the repo.

This is NOT the tutorial format (short intro, then code) and NOT the tech reference format (concept explainer, product kept to one section). If the request is one of those, say so and stop.

The rules are split into layers. Apply them in order. A later layer never overrides an earlier one: if SEO wants a claim the truth layer can't support, the claim goes.

Reference implementation: the 01 customer support post. When unsure how a section should read, match that post.

## Layer 0: inputs, before writing anything

1. Get the repo. Clone it or read it on GitHub. No repo access means no draft: ask for it.
2. Read these files in full: `README.md`, `RECIPE.md`, `lib/agent-config.ts`, `lib/scenario-knowledge.ts`, `lib/prompt-context.ts`, `lib/runtime-profile.ts`, `lib/agent-tools.ts`.
3. Note three things: what the agent can't do (the README states its limits), whether `agent-tools.ts` returns any tools, and any place the files disagree with each other (versions, names). Disagreements go in the open items, not silently fixed.
4. Pick the primary query. Use the phrase people search, even if the repo is named differently (the repo says "consumer support", the post says "customer support"). Search the exact planned title once. If another page already uses it word for word, change the title tag.
5. Run the repo readiness check below and report it before drafting.

### Repo readiness check

The post can only be as good as the repo. Everything in it has to come from the code, so a thin repo gives a thin post, and the rules forbid filling the gap. June can ask engineering to add things, so the job here is to tell her exactly what to ask for. Never write around a weak repo quietly.

Check each item and mark it ready, weak or missing:

| Check | Ready means | If not, ask engineering for |
|---|---|---|
| Scenario-specific flow | `workflow` in `agent-config.ts` has rules that only make sense for this scenario, enough to support at least 3 distinct hard problems in section 5 | The specific situations the prompt doesn't cover yet. Name them (for a hotel: date changes mid-booking, spelling a guest's name, a request the hotel can't meet) |
| Guardrails | Limits that are specific to this scenario's risks, not only the shared boilerplate | The scenario's real risks written as rules (medical triage: when to stop and send to emergency care) |
| Reference material | `scenario-knowledge.ts` has scenario facts and an explicit list of what the agent must not make up | Fictional but labelled sample data (rooms and rates, a class schedule, a product list) |
| Signature tool | `agent-tools.ts` returns at least one tool that makes the scenario real | One mock tool with fixture data, plus the prompt change that lets the agent use it |
| Differs from sibling repos | The prompt isn't the same text as another scenario's with nouns swapped | The rules that make this scenario its own |
| Real call | A transcript or recording from a real run | A recorded session, or the transcript exported from the app |
| README | States the limits plainly and gives sample requests | Those two things |
| Consistency | Versions, names and commands agree across README, RECIPE and code | The fix, with both places named |

Then report to June before writing, in this form:

- **Verdict**: ready, or draftable with gaps, or not worth drafting yet.
- **What to ask engineering for**: a numbered list she can forward as is. Each item says what to add, in which file, and which section of the post it unlocks.
- **Effect on the post**: which sections will be thin or left as `[TBD]` if nothing changes, and a rough score with and without the additions.

Sort the asks into two groups: ones that block a good post (no scenario-specific flow, prompt copied from a sibling) and ones that raise it (signature tool, real call).

If June is there, ask whether to wait for the additions or draft now with placeholders. If she isn't, draft with placeholders and put the asks at the top of the reply and in the open items.

Raise a gap again whenever it shows up later. If a section comes out weak while drafting because the repo gave it nothing to work with, say which section and what's missing. Don't pad it.

## Layer 1: truth

These are hard rules. Breaking one means the draft isn't done.

- Every fact about the demo comes from the repo files. Model names, commands, file paths and limits are copied, not remembered.
- Prompt excerpts are verbatim from the repo, in a `text` code block. Trim by cutting whole sentences. Never reword inside a quote.
- Never describe a capability the code doesn't have. If `agent-tools.ts` returns an empty list, the post says the demo is conversation-only, in the opening bullets and again in the production section.
- No invented numbers: no latency, cost, accuracy, adoption or market figures. Generic model-stack benchmark numbers don't go in scenario posts at all.
- The example call must come from a real run. If there's no transcript yet, write a scripted one that follows the prompt's rules and mark it `[TBD: scripted example, replace with a real transcript]`.
- Anything about Agora that isn't in the repo or the docs (SIP, transfer, memory features) is written as what the reader would add, and flagged `[CONFIRM]` for engineering.
- Missing things are marked, never filled: `[TBD: ...]` for reviewer name, dates, video, final repo URL and links to posts that aren't live.
- No competitor names in the body. No external statistics unless there's a link to the primary source.

## Layer 2: structure

Fixed order. Don't add, merge or reorder sections. H1 and H2s in sentence case.

| # | Section | What it must contain |
|---|---|---|
| 0 | Byline | `By June Wang. Reviewed by [TBD: engineer, title]. Last updated [TBD].` |
| 1 | Lead | 40 to 80 words, no heading. Sentence one defines the agent. Then what this post builds, the stack, and that the code is open source. Followed by a table-of-contents placeholder. |
| 2 | What you'll build | 2 or 3 bullets: what the reader sees, and the demo's honest limit. Repo link. Video placeholder. Don't list request types here. |
| 3 | What is a [scenario] voice agent? | First sentence is a standalone definition. One sentence with the other names people use for it. Then a table of the request types the agent handles, taken from `scenario-knowledge.ts`. |
| 4 | What a real call looks like | The transcript as a blockquote, 8 to 12 turns. One closing paragraph naming the behaviours it showed. Each behaviour must map to a rule in the prompt. |
| 5 | What makes [scenario] hard in voice? | 3 to 5 H3s, whatever number the scenario really has. Each H3 is one unit: the problem as a concrete moment (2 or 3 sentences), then the verbatim prompt rule that handles it, then one line on the effect. Add a link placeholder to the matching tech reference where one exists. Last H3 is always "Where these rules live": the prompt assembly snippet and which file holds what. |
| 6 | How it's built | Architecture diagram, the three-part description, the model table from `runtime-profile.ts`, and what credentials are needed. |
| 7 | Get started | Prerequisites in one sentence, the commands, what to try first, which two files to edit. Point to the README for deployment. Under 150 words of prose. |
| 8 | Add [the signature tool] | The one tool that makes this scenario real (order lookup for support, availability check for a hotel). Write it only if the tool is in the repo. Otherwise leave a `[TBD]` placeholder section. |
| 9 | From demo to production | A table with three columns: what production needs, what the demo does today, what you'd add. One sentence that changing the prompt doesn't connect any system. One paragraph on testing with real speech. |
| 10 | FAQ | Exactly 5 questions. See layer 3. |
| 11 | Related | Agora docs, the repo's ARCHITECTURE.md, two tech reference posts, the next scenario post. |
| 12 | Publishing notes (internal) | The SEO table and the open-items checklist. See layer 3 and layer 5. |

Budgets:

- 1,800 to 2,500 words in sections 1 to 11.
- Sections 3, 4, 5, 8 and 9 are scenario-specific and make up at least 70% of the post. Sections 6 and 7 are near-identical across the ten repos and stay under 20%.
- Say each thing once. If section 5 quotes a rule, section 9 and the FAQ don't explain it again.

## Layer 3: search and AI citation

- Answer first, everywhere. The lead, the first sentence under each H2, and each FAQ answer must make sense when quoted alone.
- H1: `How to build a [scenario] voice agent: call flow, prompts, and code`.
- Title tag: `Build a [Scenario] Voice Agent with Next.js | Agora`, 60 characters or fewer. The primary query stays at the front.
- Meta description: 155 characters or fewer, names the scenario, the stack and one specific thing the post shows.
- Slug: `/blog/[scenario]-voice-agent`.
- Keyword variants: the primary phrase in the H1, lead and one H2. Two or three variants placed once each (for support: "customer service", "call center", "phone"). One in the definition section, one as an FAQ question. Stop there. If a sentence only exists to hold a keyword, delete it.
- FAQ rules: questions phrased the way someone would type them, each naming the scenario or "voice agent". Answers 40 to 80 words, the direct answer in the first sentence. One question must cover a channel or capability the demo lacks, answered honestly ("Can it answer phone calls?"). Don't repeat rows of the production table.
- Text carries everything. Search engines and AI can't read the video or the diagram, so the transcript stays as text and the diagram has a sentence of reading under it.

## Layer 4: voice

Apply the humanizer skill's shared layer and English layer to the whole post. The points that matter most here:

- No em dashes or en dashes. No poison words.
- Contractions. Second person. Plain verbs.
- Open each hard-problem H3 with a moment a reader can picture ("Someone calls about a late delivery, then remembers the charger was missing too"), not a principle.
- No summary paragraph at the end. The post ends on Related.

## Layer 5: publishing notes block

Every draft ends with an internal section, below a divider, titled "Publishing notes (internal, delete before publishing)":

1. A table: primary query, secondary queries (4 to 7), title tag, meta description, slug.
2. An open-items checklist. Always include: real transcript, demo video, reviewer name, final repo URL, every `[TBD link]`, every `[CONFIRM]`, any inconsistency found in layer 0, and every ask for engineering from the repo readiness check that is still open.

## Layer 6: distribution

Use this when asked how to publish or promote a post. It isn't part of the draft.

1. agora.io is the original. Publish there first and wait a day or two for indexing.
2. Medium second, through Medium's import tool so the canonical link points to agora.io. If Medium had to go first, set the canonical link in the story's advanced settings once the agora.io URL exists. Only the story's author can do this.
3. dev.to a few days later, full text, with `canonical_url` set to the agora.io post. Start with one post and watch the response.
4. The repo lives in the Agora GitHub org, and its README uses the same definition sentence and primary phrase as the post.
5. The demo video goes on Agora's YouTube channel with the primary phrase in the title, and is embedded in the post.
6. A hub page links all ten posts. Its title is searchable ("10 voice agent examples with code"). "We just built 10 voice agent examples" is the wording for the X launch post, not the page title.
7. Awesome lists: submit after the repo, README and video are ready. Read each list's contributing rules first. Submit the hub repo or the best one or two, never all ten.
8. KOLs: X for launch-day reach, YouTube for tutorials that keep getting found.
9. Measure before scaling. Fix 5 to 10 prompts per scenario. Ask ChatGPT, Perplexity and Claude before publishing and at 2 and 4 weeks after, and log which pages they cite. Check Search Console for long-tail impressions.

## Final check before delivering

Go through this list. Any "no" means revise first.

- Did I read all seven repo files in this session?
- Did I report the repo readiness check, with a forwardable list of asks for engineering?
- Is every code block and prompt quote copied from the repo?
- Does the post say plainly what the demo can't do, in section 2 and section 9?
- Are the sections in the fixed order, with no extras?
- Is the lead 40 to 80 words with a definition in sentence one?
- Does each hard-problem H3 have a problem, a verbatim rule and an effect?
- Are there exactly 5 FAQ questions, none repeating the production table?
- Is the title tag 60 characters or fewer, and not identical to an existing page's title?
- Zero em dashes, zero invented numbers, zero competitor names?
- Is every gap marked `[TBD]` or `[CONFIRM]` and listed in the open items?

## How this goes wrong

These are the drifts to watch for. Each one happened or nearly happened on the first post.

- Writing a tutorial: the post jumps to code after two paragraphs. The scenario sections come first and carry most of the words.
- Explaining the prompt twice: once as prose under the hard problems, again in a separate design section. There's no separate design section.
- Upgrading the demo: "the agent checks your order" when no tool exists.
- Writing around a thin repo: stretching two generic rules into four hard problems, or delivering a weak section without saying the repo is why.
- Padding with market context: "customer support is being transformed by AI". Cut it.
- Dropping in benchmark figures to look credible. They don't belong in a scenario post.
- Copying the README's deployment and Docker sections. Link to them.
- Keyword stuffing after an SEO review. Variants appear once each.
- Filling a `[TBD]` with a plausible guess.

## Scoring a draft

When asked to rate a post, score these separately out of 10 and say what would raise each: answer-first extractability, structure, uniqueness against the current top results (search first), match to what the searcher expects the agent to do, evidence (real transcript, video, tool), keyword coverage. Report page quality and the odds of being found as two different things. The second depends on domain, links and distribution, which the draft can't fix. Where a low score traces back to the repo, say so and give the ask for engineering.