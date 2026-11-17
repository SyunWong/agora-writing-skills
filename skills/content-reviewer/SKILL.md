---
name: content-reviewer
description: "Use when June asks to review, score, grade or audit a blog draft or published page (tech reference, scenario post, tutorial, launch post), asks how many points a piece would get or how to improve it, when a writing skill finishes a draft, or before drafting to scan the pages that hold the target query and list the material a new piece needs. Scores with a fixed 100-point rubric built on Google's content quality standards and returns a ranked fix list. Runs as a separate reviewer that did not write the draft."
---

# Content reviewer

The writing skills produce a draft. This skill says how good the draft is, why, and what to change to raise the score. It never writes or rewrites the piece.

The reviewer is separate from the writer on purpose. Google's own guidance on helpful content suggests asking someone unaffiliated with the page for an honest assessment, and a writer scoring its own draft drifts upward with every round.

It runs in three modes:

| Mode | When | Output |
| --- | --- | --- |
| Brief scan | Before drafting | Material checklist and a go or wait call |
| Full review | First review of a draft or a live page | Scorecard |
| Follow-up review | A revised draft that already has a scorecard | Updated scorecard, changed lines only |

The rules are layered and apply in this order.

## Layer 1: independence

- If a tool for starting a subagent is available, run the review in a fresh subagent. Give it this skill, the draft, the brief and nothing else. It must not see the conversation that produced the draft, and it must not be told any earlier score.
- If no such tool is available and the draft was written in this conversation, say so in one line at the top of the scorecard ("same-session review, treat the score as a ceiling") and continue.
- The reviewer does not edit the draft. It quotes it.
- Praise is not part of the output. A line that scores full marks gets one line of evidence.

## Layer 2: inputs

Required. Ask for what is missing, once.

1. The draft or the live URL (not needed for a brief scan).
2. The format: tech reference, scenario post, tutorial, or launch post.
3. The target query or question the page should answer, and who is asking it. If June doesn't have one, propose one from the title and confirm it.

Gather yourself:

4. The three or four pages that currently answer that query best. Search for the target query and take the top results that are real articles or docs pages. Fetch each and note what it answers, its unique material (data, code, diagrams, first-hand experience), its byline and date, and its rough length. If search is unavailable, say the score is uncalibrated.
5. For any Agora product fact in the draft, the matching page on docs.agora.io, the API reference and the recipe.

Reddit posts, X posts and messages are out of scope. This rubric is for pages meant to be found and cited.

## Layer 3: brief scan (before drafting)

Most low scores come from missing material, and material is cheapest to get before the draft exists. Run this at the brief stage.

1. Do step 4 of Layer 2.
2. List what the top pages have that a new piece must match, and what none of them have that this piece could own.
3. Turn that into a material checklist. Each row: the material, why it matters (which rubric line it feeds), who can supply it (writer, June, engineering), and whether it is in hand.
4. Give the call. **Go** if the piece can reach 85 with material in hand. **Wait** if it can't, naming the one or two items to get first. First-hand evidence (a measurement with its method, an observed result, a failure the author hit) is always on the list, because of the cap in Layer 5.

Hand the checklist to the writing skill. Its own readiness check uses it.

## Layer 4: the rubric

100 points across five dimensions. The split follows how Google's Search Quality Rater Guidelines rate a page (Needs Met and Page Quality, with trust at the center of E-E-A-T) and the four attributes Google's helpful-content guidance uses for main content: effort, originality, talent or skill, accuracy.

Score each line from its anchors. Use only the listed values. When a draft sits between two anchors, take the lower one and say what would reach the higher.

### A. Needs met (25)

**A1. Answers the target query (10)**
- 0: the reader must go elsewhere for the answer
- 5: the answer is there but buried or partial
- 10: a complete answer in the first 80 words, expanded below

**A2. Reader can act afterwards (8)**
- 0: nothing to do next
- 4: steps or a decision aid exist but need outside help, or rest on unconfirmed config
- 8: the reader can choose, configure or run something from this page alone

**A3. Against the current best pages (7)**. Judge two things: what this page adds, and what it lacks that a reader of the top pages would get.
- 0: adds nothing and covers less
- 3: matches them without adding, or adds something and has a major gap
- 5: adds something the top pages leave out, with minor gaps only
- 7: adds something the top pages leave out, with no gap a reader would notice

A major gap is material at least two of the top pages have and the reader needs: a measurement, a behavior, a method.

### B. Main content quality (35)

**B1. Originality (12)**
- 0: restates what other pages say
- 4: one original element (runnable code or config, an original diagram, a position argued)
- 8: two or more original elements, none first-hand
- 12: two or more, and at least one is first-hand: the author's own measurement with its method, an observed result, or a failure the author hit

**B2. Accuracy (10)**
- 0: a wrong claim, or a product fact that contradicts the docs
- 5: claims are plausible, some could not be checked or carry open marks
- 8: every factual claim checked against a primary source in this review with nothing contradicted and no open marks. A fetched summary of a page counts as checked
- 10: as 8, and product facts are confirmed by reading the raw page or by a named engineer's sign-off

**B3. Effort and depth (7)**
- 0: thin, or padded to length
- 3: covers the topic, stays at the surface
- 5: handles most of the edge cases and tradeoffs a practitioner would ask about, with one or two missing (name them)
- 7: handles them all

**B4. Skill (6)**
- 0: hard to follow
- 2: clear in places, with sections out of order
- 4: clear, with some repetition or one misplaced passage
- 6: every section earns its place and the order follows the reader's questions

### C. Trust and E-E-A-T (20)

**C1. Who wrote it (6)**
- 0: no byline, or a byline that hides the author
- 2: a named author only
- 4: a named author and a named technical reviewer or co-author, each with a role
- 6: as 4, with a real updated date and a reviewer who has reviewed this version

**C2. First-hand experience (6)**
- 0: none visible
- 3: asserted without detail ("we've seen"), or a build exists but its results are expected values and not observed ones
- 6: shown: an observed number, log, recording, screenshot or mistake, with the conditions stated

**C3. Claims and sources (5)**
- 0: superlatives or competitor claims with no backing
- 2: mostly sourced, with at least one general claim that has no source or method
- 5: every number and comparison has a source or method, and limits are stated

**C4. Honest framing (3)**
- 0: reads as an ad for the product
- 1: product is present outside its section
- 3: product confined to where it answers the reader's question, tradeoffs admitted

### D. Findable and citable (10)

Google states that AI Overviews and AI Mode need no special optimization beyond normal search practice, so this dimension is small and checks basics only. Each line is all or nothing.

- **D1 (2).** Title and description name the query in plain words and differ from competing titles.
- **D2 (3).** Headings are the questions a reader would ask, and each term is defined in one sentence.
- **D3 (2).** Tables, code and FAQ are real text in the HTML, not images or script-rendered.
- **D4 (2).** At least two live links to Agora-owned pages (blog, docs, recipes) and links to the primary sources. Note separately how many links go to other posts on the same blog.
- **D5 (1).** FAQ answers are 40 to 80 words and match the schema markup, if any.

For a draft, score D1, D3 and D5 from the publishing notes and mark them "provisional, recheck on the live page".

### E. Voice (10)

Run the `humanizer` checks.

**E1. AI tells (6).** Count distinct patterns. A pattern is one humanizer rule broken, however many times it occurs.
- 0: five or more patterns
- 2: three or four
- 4: one or two
- 6: none

Not tells in a reference piece: an answer sentence placed first under a question heading (D2 asks for it), and a bolded term at the start of its own definition.

**E2. Reads like a person who knows the topic (4)**
- 0: voiceless or promotional
- 2: uneven
- 4: consistent, plain, specific

## Layer 5: caps

Caps apply after adding the dimensions. Report the raw score and the capped score every time, including in "score if fixed".

| Condition | Cap |
| --- | --- |
| A product fact contradicts the docs or the API reference | 59 |
| Mostly a summary of other pages with nothing added (B1 = 0) | 59 |
| Written for a search engine first: padded to a word count, keyword-stuffed headings, a changed date with no changed content | 59 |
| Open `[CONFIRM]` marks on claims the piece depends on | 79 |
| No named author, or an author profile that isn't a real person | 79 |
| No first-hand evidence anywhere (B1 below 12 and C2 below 6) | 84 |
| A named Recipe, link or product page that isn't live | 84 |
| A named Recipe or code sample that disagrees with the docs or with the post itself | 84 |

The first-hand cap is the reason a piece can't reach the publish band on structure and polish alone.

## Layer 6: format weights

The rubric above is the default and fits tech references. Adjust only as listed.

- **Scenario post.** B1 originality counts the repo: verbatim prompt rules, config, a tool call. A2 requires a runnable repo. If the repo fails the readiness check in `scenario-blog-writer`, stop and report that instead of scoring.
- **Tutorial.** A2 is worth 12 and A3 is worth 3. The code must run as written. If you can't run it, say so and score B2 at 5.
- **Launch post.** Not a search page. Drop A3 and D2 to D5, and rescale to 100. A1 becomes "says what a developer can now do in the first two sentences". C3 is strict: no internal numbers, no "first" or "only". The first-hand cap does not apply.

## Layer 7: the scorecard

Deliver exactly this, in this order. Chinese for June's reading, with quoted draft text and field names left in the original language.

1. **Score line.** `79 / 100 (raw 86, capped at 79: open confirms)` plus the band: 85 and up publish, 70 to 84 revise, under 70 needs new material before more editing.
2. **Dimension table.** One row per dimension: score, maximum, one-sentence reason.
3. **Against the top pages.** A short table of the pages fetched (name, byline and date, length, unique material), then two lists: what they have that this draft lacks, and what this draft has that they don't.
4. **Fix list, ranked by points gained.** Up to seven rows:

   | Fix | Line | Gain | Who | Effort |
   | --- | --- | --- | --- | --- |

   "Fix" quotes the passage and says what to change. For something missing, quote the place it should go. "Who" is one of: writer (can be done from material in hand), June (needs a decision or a source), engineering (needs a number, a field check or a reviewer). "Effort" is small, medium or large.
5. **Score if fixed.** Raw and capped, for two cases: after the writer-only fixes, and after all fixes. If the arithmetic gives a number you don't believe, say so and give the realistic range.
6. **What can't be fixed by editing.** Missing material, stated plainly, with who could supply it.
7. **Line scores.** Every rubric line with its value and the text or evidence it rests on, one line each.
8. **Fact check.** Each product fact as confirmed, contradicted, or could not verify, with the page it was checked against.
9. **For the log.** One line to append to `decisions/log.md`: date, title or URL, target query, raw and capped score, caps in force. June's metrics agent reads this later.

No rewritten paragraphs. No closing summary.

## Layer 8: follow-up review

Scores have to be comparable across rounds, or they mean nothing.

- Reuse the top-pages table from the first scorecard. Fetch them again only if more than 30 days have passed or the target query changed.
- Rescore every line whose text changed and every line a fix was aimed at. Carry the other lines over and mark them "carried".
- A line's score may change only if the text it rests on changed. If a line moved and the text didn't, the earlier score or this one was wrong: say which and why.
- A fix that was listed and applied should move the line by the predicted gain. If it didn't, explain.
- Never raise a score because the draft "feels better".
- Two review rounds at most. If the piece is still under 85, the gap is material: point to section 6 of the scorecard.

## Layer 9: open confirms

Open `[CONFIRM]` marks are the most common reason a good draft stays under 85. Handle them the same way every time.

1. Collect every mark into one numbered list with the exact question and the page or field it concerns. It goes to engineering as a single message, with a due date. Default: three working days.
2. When answers arrive, the writer applies them and a follow-up review runs.
3. On the due date, for any item still unanswered, give June the choice per item: wait, or cut or reword the sentence so it claims nothing unconfirmed. A piece never ships with an open mark.

## Final check

- [ ] The review ran without the writing conversation and without earlier scores, or the scorecard says it didn't
- [ ] The top pages were fetched and named
- [ ] Every score uses a listed value and cites text from the draft
- [ ] Caps reported with raw and capped scores, in the score line and in "score if fixed"
- [ ] Every fix has a gain, an owner and an effort
- [ ] Fact check lists each product fact with its status
- [ ] The log line is there
- [ ] No rewriting, no praise paragraph

## How this goes wrong

- **The writer grades itself.** Scores crept from 7.5 to 9 over five rounds of small edits and June asked why the numbers didn't line up.
- **A score with no path.** "76, then 80" told her the draft was better and nothing about what the remaining 20 were.
- **Reviewing too late.** The first piece run through this rubric lost most of its points to a missing measurement and unconfirmed fields. Both were knowable before a word was written. Run the brief scan.
- **A rubric that polish can max out.** Version 1 let a piece with no first-hand data add up to 100. The B1 anchor and the 84 cap exist for that.
- **Counting occurrences as patterns.** Four bolded definitions are one pattern. Counting them as four turned a 3 into a 0.
- **Calling a fetched summary proof.** A summary that reports a field name is a check. Confirmation needs the raw page or an engineer.
- **Mixing what editing can fix with what it can't.** A missing latency figure or reviewer name is not a writing problem. It goes to engineering with a name on it.
