---
name: content-reviewer
description: "Use when June asks to review, score, grade or audit a blog draft or published page (tech reference, scenario post, tutorial, launch post), asks how many points a piece would get or how to improve it, or when a writing skill finishes a draft. Scores against Google's content quality standards with a fixed 100-point rubric and returns a ranked fix list. Runs as a separate reviewer that did not write the draft."
---

# Content reviewer

The writing skills produce a draft. This skill says how good the draft is, why, and what to change to raise the score. It never writes or rewrites the piece.

The reviewer is separate from the writer on purpose. Google's own guidance on helpful content suggests asking someone unaffiliated with the page for an honest assessment, and a writer scoring its own draft drifts upward with every round.

The rules are layered and apply in this order.

## Layer 1: independence

- If a tool for starting a subagent is available, run the review in a fresh subagent. Give it this skill, the draft, the brief and nothing else. It must not see the conversation that produced the draft.
- If no such tool is available and the draft was written in this conversation, say so in one line at the top of the scorecard ("same-session review, treat the score as a ceiling") and continue.
- The reviewer does not edit the draft. It quotes it.
- Praise is not part of the output. A dimension that scores full marks gets one line.

## Layer 2: inputs

Required. Ask for what is missing, once.

1. The draft or the live URL.
2. The format: tech reference, scenario post, tutorial, or launch post.
3. The target query or question the page should answer, and who is asking it. If June doesn't have one, propose one from the title and confirm it.

Gather yourself:

4. The three or four pages that currently answer that query best (search for the target query, take the top results that are real articles). Fetch each and note: what it answers, its unique material (data, code, diagrams, experience), its byline, its length. Without this step the Needs Met score is a guess, so if search is unavailable, say the score is uncalibrated.
5. For any Agora product fact in the draft, the matching page on docs.agora.io.

Reddit posts, X posts and messages are out of scope. This rubric is for pages meant to be found and cited.

## Layer 3: the rubric

100 points across five dimensions. The split follows how Google's Search Quality Rater Guidelines rate a page (Needs Met and Page Quality, with trust at the center of E-E-A-T) and the four attributes Google's helpful-content guidance uses for main content: effort, originality, talent or skill, accuracy.

Score each line from its anchors. Use only the listed values. No half points.

### A. Needs met (25)

| Line | 0 | Half | Full |
| --- | --- | --- | --- |
| A1. Answers the target query (10) | Reader must go elsewhere for the answer | Answer is there but buried or partial (5) | A complete answer in the first 80 words, expanded below (10) |
| A2. Reader can act afterwards (8) | Nothing to do next | Steps or a decision aid exist but need outside help (4) | Reader can choose, configure or run something from this page alone (8) |
| A3. Against the current best pages (7) | Covers less than they do | Covers the same ground (3) | Answers something the top pages leave out, named in the scorecard (7) |

### B. Main content quality (35)

| Line | 0 | Half | Full |
| --- | --- | --- | --- |
| B1. Originality (12) | Restates what other pages say | One original element (6) | Two or more: own measurement, runnable code or config, original diagram, a failure the author hit, a position argued (12) |
| B2. Accuracy (10) | A wrong claim, or product facts that contradict the docs | All claims plausible, some unverified (5) | Every factual claim verified against a primary source in this review, or marked and listed (10) |
| B3. Effort and depth (7) | Thin, or padded to length | Covers the topic, stays at the surface (3) | Handles the edge cases and tradeoffs a practitioner would ask about (7) |
| B4. Skill (6) | Hard to follow | Clear, with redundant or misplaced sections (3) | Every section earns its place, order follows the reader's questions (6) |

### C. Trust and E-E-A-T (20)

| Line | 0 | Half | Full |
| --- | --- | --- | --- |
| C1. Who wrote it (6) | No byline, or a byline that hides the author | Named author, no role or reviewer (3) | Named author plus named technical reviewer or co-author, with roles and an updated date (6) |
| C2. First-hand experience (6) | None visible | Asserted ("we've seen") without detail (3) | Shown: a specific build, number, log, screenshot or mistake (6) |
| C3. Claims and sources (5) | Superlatives or competitor claims with no backing | Mostly sourced (2) | Every number and comparison has a source or method, and limits are stated (5) |
| C4. Honest framing (3) | Reads as an ad for the product | Product is present outside its section (1) | Product confined to where it answers the reader's question, tradeoffs admitted (3) |

### D. Findable and citable (10)

Google states that AI Overviews and AI Mode need no special optimization beyond normal search practice, so this dimension is small and checks basics only.

| Line | 0 | Full |
| --- | --- | --- |
| D1. Title and description name the query in plain words, and differ from competing titles (2) | No | Yes |
| D2. Headings are the questions a reader would ask, definitions are stated in one sentence each (3) | No | Yes |
| D3. Tables, code and FAQ are real text in the HTML, not images or script-rendered (2) | No | Yes |
| D4. Links: at least two live internal links and the primary sources (2) | No | Yes |
| D5. FAQ answers are 40 to 80 words and match the schema markup, if any (1) | No | Yes |

### E. Voice (10)

Run the `humanizer` checks and count hits.

| Line | 0 | Half | Full |
| --- | --- | --- | --- |
| E1. AI tells (6) | Six or more hits | One to five hits (3) | Zero (6) |
| E2. Reads like a person who knows the topic (4) | Voiceless or promotional | Uneven (2) | Consistent, plain, specific (4) |

## Layer 4: caps

Caps apply after adding the dimensions. Report both the raw score and the capped score.

| Condition | Cap |
| --- | --- |
| A product fact contradicts the docs or the API reference | 59 |
| Mostly a summary of other pages with nothing added (B1 = 0) | 59 |
| Written for a search engine first: padded to a word count, keyword-stuffed headings, a changed date with no changed content | 59 |
| Open `[CONFIRM]` marks on claims the piece depends on | 79 |
| No named author, or an author profile that isn't a real person | 79 |
| A named Recipe, link or product page that isn't live | 84 |

## Layer 5: format weights

The rubric above is the default and fits tech references. Adjust only as listed.

- **Scenario post.** B1 originality counts the repo: verbatim prompt rules, config, a tool call. A2 requires a runnable repo. If the repo fails the readiness check in `scenario-blog-writer`, stop and report that instead of scoring.
- **Tutorial.** A2 is worth 12 and A3 is worth 3. The code must run as written. If you can't run it, say so and score B2 at half.
- **Launch post.** Not a search page. Drop A3 and D2 to D5, and rescale to 100. A1 becomes "says what a developer can now do in the first two sentences". C3 is strict: no internal numbers, no "first" or "only".

## Layer 6: the scorecard

Deliver exactly this, in this order. Chinese for June's reading, with quoted draft text left in its original language.

1. **Score line.** `72 / 100 (raw 78, capped at 79 by open confirms: no change)` plus the band: 85 and up publish, 70 to 84 revise, under 70 needs new material before more editing.
2. **Dimension table.** One row per dimension: score, maximum, one-sentence reason.
3. **Against the top pages.** Two short lists: what they have that this draft lacks, and what this draft has that they don't. Name the pages.
4. **Fix list, ranked by points gained.** Up to seven rows:

   | Fix | Line | Gain | Who | Effort |
   | --- | --- | --- | --- | --- |

   "Fix" quotes the passage and says what to change. "Who" is one of: writer (can be done from material in hand), June (needs a decision or a source), engineering (needs a number, a field check or a reviewer). "Effort" is small, medium or large.
5. **Score if fixed.** Two numbers: after the writer-only fixes, and after all fixes. This is the answer to "how far can this piece go".
6. **What can't be fixed by editing.** Missing material, stated plainly, with who could supply it.

No rewritten paragraphs. No closing summary.

## Layer 7: rescoring

Scores have to be comparable across rounds, or they mean nothing.

- Rescore every line from the draft in front of you. Don't start from the last score and adjust.
- After scoring, compare with the previous scorecard if there is one. A line's score may change only if the text it rests on changed. If a line moved and the text didn't, the earlier score or this one was wrong: say which and why.
- A fix that was listed and applied should move the line by the gain that was predicted. If it didn't, explain.
- Never raise a score because the draft "feels better".

## Layer 8: after publishing

The score is a prediction. Check it.

- Record in `decisions/log.md` of the agora-writing-skills repo: date, URL, final score, the caps that applied.
- At 30 days, add what is known: impressions and clicks for the target query, whether AI assistants cite the page when asked the target question, referral signups if tracked.
- After five pieces, compare scores with results. If a dimension doesn't track outcomes, change its weight and note the change in the changelog. Until then the weights are provisional.

## Final check

- [ ] The review ran without the writing conversation, or the scorecard says it didn't
- [ ] The top pages were fetched and named
- [ ] Every score uses a listed value and cites text from the draft
- [ ] Caps reported with raw and capped scores
- [ ] Every fix has a gain, an owner and an effort
- [ ] "Score if fixed" given for writer-only and for all fixes
- [ ] No rewriting, no praise paragraph

## How this goes wrong

- **The writer grades itself.** Scores crept from 7.5 to 9 over five rounds of small edits and June asked why the numbers didn't line up.
- **A score with no path.** "76, then 80" told her the draft was better and nothing about what the remaining 20 were.
- **Scoring against an imagined standard.** Without fetching the pages that hold the query today, "better than competitors" is a guess.
- **Rewarding structure over substance.** A page can have a direct answer, a table and an FAQ and still say nothing new. B1 and the 59 cap exist for that.
- **Mixing what editing can fix with what it can't.** A missing latency figure or reviewer name is not a writing problem. It goes to engineering with a name on it.
