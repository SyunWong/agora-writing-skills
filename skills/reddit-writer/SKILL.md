---
name: reddit-writer
description: "Use when writing, reviewing or rewriting a Reddit post or comment, or content for a developer forum: show-and-tell posts about a demo build, experience reports, comparisons, replies. Writes in a real developer's voice with the humanizer rules built in, and never names Agora or its products."
---

# Reddit Writer

Write Reddit content that passes the "nice try, chatgpt" test. The patterns here are distilled from how real developers and founders actually communicate on Reddit, not how marketing teams think they should.

The single most important idea: **Reddit users don't trust polished content, they trust messy authenticity.** A typo-laden comment with a real benchmark number will outperform a perfectly formatted post every time. Everything in this skill flows from that.

The humanizer rules are built into step 3 and step 4. Never skip them, and never treat them as a final polish. They are how the draft gets written in the first place.

## Hard constraint: no brand

A previous account was banned for mentioning the brand. Nothing in a post or comment names Agora, any Agora product or SDK, or links to an Agora domain or an Agora GitHub org repo. Describe the stack in generic terms instead ("a realtime voice SDK", "the RTC layer"). This outranks every other rule here, including the user asking for a soft promote: write the reply without the name and say why in one line.

Posts are built around the user's own demo builds: what was built, what broke, what it cost. The build carries the post, not a product.

## Trigger

- User asks to write a Reddit post or comment
- User asks to review/improve Reddit content
- User asks to "make it sound less AI" or "more human" for Reddit
- User mentions posting on Reddit, r/[subreddit], or Reddit-related content
- User asks to draft content for developer community forums

## Steps

1. **Gather inputs before writing.** Missing inputs produce generic AI slop. Ask for what's missing:
   - What's the core message or opinion? (one sentence, in plain words)
   - What's the real story? (what you actually did, what actually happened, specifics)
   - Any real numbers? (latency ms, cost per minute, lines of code, time spent, users served)
   - What went wrong? (failures, mistakes, tradeoffs. Reddit values these MORE than successes)
   - What subreddit is this for? (tone varies dramatically between communities)
   - What's the goal? (start a discussion, answer a question, share knowledge, soft-promote a product)
   - What's the honest current state? (a localhost demo is not a v1, and saying so earns trust)

2. **Identify the content type** and use the matching pattern from "Post types" or "Comment types" near the end of this file. For a review or audit of an existing draft, there is no separate pattern: run steps 3 to 5 on it and say what you changed.

3. **Draft, applying ALL anti-slop rules below.**

### Hard constraint: no em dashes

The final output contains zero em dashes (—) and zero en dashes (–). No spaced ` — `, no ` -- `. This is the single most reliable AI tell and it outweighs the fact that real people occasionally use them.

Replace each one, in order of preference: a period, a comma, a colon, parentheses, or restructure the sentence. Scan the final draft for `—` and `–` before delivering. Any hit means it is not done.

### Poison words

Kill on sight: delve, tapestry, nuance, landscape (abstract), multifaceted, holistic, synergy, paradigm, leverage, foster, realm, resonate, underscore, pivotal, robust, harness, streamline, elevate, empower, unlock, unleash, myriad, plethora, paramount, embark, seamless, intricate, interplay, garner, showcase, testament, vibrant, enduring, enhance, crucial, key (adj), valuable, align with, actually, genuinely, additionally, emphasizing, highlight (verb).

`actually` and `genuinely` deserve special attention in first-person Reddit writing. They read as intensifiers a real person wouldn't reach for. "my best thinking actually happens on the commute" is worse than "I do my best thinking in the car."

### Killer sentence patterns

Kill: "It's important to note", "In today's fast-paced world", "Let's dive in", "Without further ado", "A testament to", "game-changer", "In conclusion", "Have you ever wondered", "It's worth mentioning", "Navigating the complexities", "Here's what you need to know", "Let's break this down".

### Language patterns from the humanizer

**Generalized insight instead of personal experience.** This is the biggest tell in first-person Reddit posts. AI states a principle; a person describes what happened to them. Rewrite every takeaway as a specific moment.

| AI (a principle) | Human (a moment) |
|---|---|
| "saying your tasks out loud actually helps you think, not just capture" | "halfway through I was sorting out what mattered instead of just listing stuff" |
| "voice input reduces friction for mobile users" | "I tried it in the car once and gave up because it kept cutting me off" |

**Conversational rhetorical openers.** "The thing is", "Honestly?", "Look,", "Here's the thing", "Let's be honest", "Real talk". The tell is the theatrical pause before an ordinary point. Just say the thing.

**Colon setup-and-reveal.** "One thing I didn't expect:", "Next thing I'm figuring out:", "The problem:". Restructure into a plain sentence. "Didn't expect this, but..." or "Still deciding whether..."

**Negative parallelism.** "It's not just X, it's Y." "Not only... but..." Flip it into a direct statement, or into "I did A instead of B" which reads as observation rather than slogan.

**Rule of three.** Three parallel items to sound comprehensive. Use the natural number. "what needs to happen today, what's stuck, what I forgot about" is three beats too many when one clause carries it.

**Manufactured punchlines and staccato drama.** A run of short fragments engineered to land: "It had no preference. No aesthetic. No nostalgia." One short sentence for emphasis is good. A run of them is a tell.

**Significance inflation.** stands as, serves as, a testament to, marks a shift, underscores its importance, evolving landscape, turning point. Cut the claim, state the fact.

**Promotional language.** boasts, vibrant, rich, profound, groundbreaking, renowned, must-try, commitment to. Reddit punishes this harder than any other platform.

**Superficial -ing analyses.** Participles tacked on for fake depth: highlighting, underscoring, ensuring, reflecting, symbolizing, fostering, showcasing. Delete or replace with a real claim.

**Vague attributions.** "Experts believe", "industry reports suggest", "some argue". Name the source or drop the claim.

**Copula avoidance.** serves as, represents, boasts, features, offers. Use is, are, has.

**Filler and hedging.** in order to → to. due to the fact that → because. has the ability to → can. could potentially possibly → may.

**False ranges.** "from X to Y" where X and Y aren't on a scale. Just list the things.

### Structural patterns

- Boldface: at most one or two per post, and only where a scanner needs them. Never bold every paragraph opener.
- Inline-header lists (`- **Performance:** Performance improved.`): convert to prose or plain bullets.
- Title Case Headings: use sentence case, or no heading at all.
- Emojis: none unless the user used them first.
- Curly quotes: use straight quotes.
- Perfect bullet parallelism: break it, make some points longer.
- Three or more paragraphs of similar length: merge or split.

### Voice requirements

- Vary sentence length wildly. Some under 5 words, some over 25.
- Have a clear opinion, not balanced hedging.
- Include at least one oddly specific detail.
- Admit at least one thing you don't know, got wrong, or haven't built yet. Name the gap between the story and the current state ("the whole point was commute use and it only runs on my laptop").
- Use contractions and Reddit abbreviations where natural (tbh, ngl, fwiw, imo, ymmv).
- Match the target subreddit's vibe.
- Tools and stacks get mentioned the way a builder mentions them: in passing, generic for anything Agora (see "Hard constraint: no brand"). Third-party tools can be named when the story needs them.

### Endings

End with energy, not summary. But do not end by begging for opinions either. Asking "how have you all handled X?" and "what should I do?" reads as people-pleasing and lowers the author's standing.

Better: state what you're leaning toward and why you're unsure. "Leaning standalone but not sure yet. Will share what I land on." That invites discussion without asking permission. An explicit feedback ask is fine when the author has genuinely earned it (a first build-in-public post, a real fork in the road), but keep it to one short line.

4. **Run the audit pass.** Do not skip this. Re-read the draft cold and ask: *what still makes this obviously AI generated?* Name the remaining tells explicitly, then revise. Most drafts need two passes. The tells that survive a first pass are usually:
   - a takeaway phrased as a principle rather than a moment
   - one leftover `actually` or `genuinely`
   - a sentence balanced so neatly it reads as a thesis statement
   - an em dash that slipped in during revision

5. **Run the authenticity checklist** before delivering:
   - [ ] Zero mentions of Agora, its products, its domains or its org repos?
   - [ ] Zero poison words?
   - [ ] Zero em dashes and en dashes?
   - [ ] Read it out loud. Sounds like talking, not an essay?
   - [ ] Sentence lengths vary? (some under 5 words, some over 25?)
   - [ ] Clear opinion, not a balanced hedge?
   - [ ] At least one specific detail only a real person would know?
   - [ ] At least one admission of not knowing, a mistake, or an unfinished part?
   - [ ] Every insight framed as personal experience, not a general principle?
   - [ ] No colon setup-and-reveal constructions?
   - [ ] Not every paragraph starts with bold text?
   - [ ] No summary paragraph at the end, and no begging for opinions?
   - [ ] Would a Reddit vet reply "nice try, chatgpt"? If yes → rewrite.

6. **Offer two variants** when the user hasn't already converged: a shorter/punchier version and a longer/more detailed version. Once they've picked a direction, iterate on that one rather than re-offering options.

## Post types

Pick one. A post that tries to be two of these reads as marketing.

**Show and tell.** The default for a demo build. The video or GIF is the post, uploaded straight to Reddit and never linked out, because native video gets watched and a link gets skipped. The title says what the thing does in plain words, with no adjectives. The body is two to five sentences: what it is, one odd detail, the honest current state. Leave the build details out unless someone asks in the comments, then answer there. Short beats thorough here, and the body should never be louder than the video.

**Experience report.** What you set out to do, what broke, what it cost in hours or money, where it stands now. Order it as it happened. One real number minimum. The failure gets more room than the fix.

**Comparison.** Only for things you ran yourself. Say what you tested, on what, and what you didn't test. Give the result per case and let the reader total it. Never crown a winner on something you haven't measured, and never compare against the stack you work on.

**Feedback request.** Ask one question about one decision, after showing enough of the work that answering is easy. State what you're leaning toward. "Thoughts?" is not a question.

**Game or media take.** For posts in a game's own subreddit: a score in the title if you have one, what worked, what didn't, one closing line. Readers there know the references, so don't explain them.

**Update on an earlier post.** A fix or a new version goes into the original post as a short edit at the top, so new readers and search see it. People who asked for the thing get a direct reply, because replies notify and edits don't. If the post is more than a few days old or the change is big, write a new post and link back. Never add a link to a post after it took off. That reads as bait and gets removed. Work that belongs to another community (a hardware port, for example) gets its own post in that subreddit when it's far enough along.

## Comment types

**Helpful reply.** Answer the question in the first sentence. Then the one detail that makes the answer usable: the setting, the number, the gotcha. Stop there.

**Me-too with a difference.** Someone describes an experience and yours differs. Don't dispute theirs. Say what happens on your side and what you changed, if anything. "never got mine past 5 minutes" is a contribution. "that can't be right" isn't.

**Reply that mentions your own build.** This replaces the old soft-promote reply. Answer first, then mention the build only if it's evidence for the answer, in generic terms and with no name (see "Hard constraint: no brand"). If the answer stands without the mention, cut the mention.

**Discussion reply.** One opinion and the reason you hold it. Agreeing is fine if you add the case that convinced you.

**Joke or riff.** In hobby subreddits, one line, built on the sub's own vocabulary. Check the terms are right before posting (card names, mechanics, character names). A wrong term kills the joke.

**Permission ask.** When asking to repost someone's work elsewhere: one or two sentences, offer credit and a tag, ask for their handle. Skip the paragraph about who you are if the subreddit has self-promotion rules.

## Posting notes

- Typos get fixed in the first few minutes, before the "edited" tag shows.
- One subreddit per post, staggered over days. Cross-posting the same text the same day gets flagged.
- If the user works on the stack behind a demo and someone asks directly, the answer is a short factual disclosure in the comments, still without a link.

## Do not over-correct

These are NOT tells on their own: polished grammar, formal vocabulary, mixed casual and formal register, one "however", unsourced claims, one short emphatic sentence. Look for clusters, not isolated hits.

Preserve these signs of human writing, especially in the user's own drafts:
- specific hard-to-fabricate detail
- mixed feelings and unresolved tension
- dated references and slang
- genuine asides, tangents, and self-corrections
- small grammatical irregularities

When editing text the user wrote themselves, fix grammar and AI tells but do not sanitize their voice into something that came out of a content calendar. Slight unevenness reads as a person.

Rewrite, don't delete. Cover everything the original covered. Five paragraphs in, five paragraphs out unless the user asked for it shorter.

## Verification

- Re-read the final draft and confirm zero words from the poison list appear
- Grep the draft for `—` and `–`. Both counts must be zero
- Confirm sentence length variation exists (count words in 3 random sentences, they should differ by >10 words)
- Confirm at least one first-person experience, one real number or specific detail, and one admission of uncertainty
- Confirm every insight is a moment, not a principle
- Search the draft for "agora" (any case) and for agora.io links. Both counts must be zero