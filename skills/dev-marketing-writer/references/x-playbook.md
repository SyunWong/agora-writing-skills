# X (Twitter) Playbook for Developer Marketing

Patterns extracted from Supabase (the reference standard — 400+ likes weekly while billion-dollar dev companies get 10), Resend/Zeno Rocha, Vercel, Linear, and Cursor.

## Contents
1. [What the best accounts do and don't do](#norms)
2. [Structure A: Launch tweet](#structure-a-launch-tweet-company-account)
3. [Structure B: Founder story post](#structure-b-founder-story-post-personal-account)
4. [Structure C: Milestone / metric post](#structure-c-milestone--metric-post)
5. [Structure D: Build-up and follow-through](#structure-d-build-up-and-follow-through)
6. [Structure E: Thought leadership post](#structure-e-thought-leadership-post)
7. [Visual rules](#visual-rules)
8. [Voice AI adaptations](#voice-ai-adaptations)

## Norms

What the strongest dev-tool accounts DO:
- Mix content types: product announcements, memes/jokes, blog promotion, event build-up, community retweets. Never monotone.
- Use tech jargon precisely. "Create a trigger listening for insert events" reads like a developer wrote it — because one did. Jargon is a tribal signal that builds trust.
- Make every tweet visually pop: demo video, code snippet image, dark-themed thumbnail (dark stands out in a light feed).
- Retweet everything positive: user wins, first merged PRs, community tutorials, integration partners, swag photos.
- Ask directly for things: GitHub stars, Discord joins, job applications.

What they DON'T do (surprising, verified from Supabase's feed):
- **No long threads for launches.** One strong tweet + artifact beats a 12-tweet thread.
- **No promotional copy when sharing blog posts.** Drop the link, let the thumbnail and title do the talking.
- **No generic industry commentary** from the company account. Stay focused on what you uniquely bring.
- **No high volume.** Supabase tweets surprisingly little. Density of quality > frequency.

## Structure A: Launch tweet (company account)

```
Line 1: What developers can now do — plain words, capability-first
(optional) Line 2: the headline number or one-line "why this matters"

3–5 lines, one capability each:
- specific, concrete, no adjectives
- can use sparse emoji/symbols as visual bullets

[ARTIFACT: demo video <60s / code snippet image / screenshot]
Link: last line, or first reply
```

**Example (real pattern, Vercel-style):**
> Introducing Fluid compute: the power of servers, in serverless form.
>
> ▲ Zero cold starts
> ▲ In-function concurrency
> ▲ Up to 85% lower compute costs
> ▲ Zero config, zero migration
>
> [demo video]
> vercel.com/fluid

**Example (Voice AI):**
> You can now interrupt the agent mid-sentence and it recovers naturally.
>
> ◆ Barge-in detection in under 200ms
> ◆ No lost context after interruption
> ◆ Works over WebRTC and PSTN
> ◆ On every plan, today
>
> [call recording where a human interrupts the agent]
> Try it: call +1 (xxx) xxx-xxxx

Failure modes to avoid: starting with "We're excited to announce", feature name before capability, adjectives instead of numbers, link buried mid-tweet, no visual.

## Structure B: Founder story post (personal account)

The founder account humanizes what the company account cannot. Zeno Rocha's arc formula:

```
1. Time anchor: "Two years ago, Resend was the new kid on the block."
2. The doubt: "Many people told me 'We don't need another Email API.'"
3. The belief: "But if you focus on quality, there's always space, even in a crowded market."
4. Honest present: "We still have a looong way to go."
5. Back to work: "...so back to work." (+ optional chart/screenshot)
```

Key ingredients: vulnerability + conviction + gratitude, in that order. Casual register ("looong") is a feature, not a bug. Quote-tweet or link the company announcement to route traffic.

Use for: launch day +1, anniversaries, funding, milestone moments, responding to skeptics.

## Structure C: Milestone / metric post

Data + take. The number earns attention; the insight earns shares.

**Real example (Zeno Rocha):**
> January was a record-breaking month for @resend in sign ups and revenue.
> There were no launch weeks or big announcements. Just a ton of new users coming from @lovable, @boltdotnew, and @v0.
> The definition of a "developer" is changing.

Formula: concrete metric → surprising cause → one-sentence industry insight. The insight is what makes it thought leadership rather than bragging.

## Structure D: Build-up and follow-through

A launch is a window, not a moment. Supabase's sequence around any event:

- **Before**: "coming soon" teaser with cropped/blurred visual; countdown; waitlist link
- **Launch day**: minute-level run sheet (Supabase's actual schedule: 7:30 reminder tweet → 7:55 Product Hunt live → 8:00 blog live → 8:05 launch tweet → 8:10 share with angels/amplifiers → 8:15 Twitter Space live)
- **After**: retweet community reactions all day; day+1 recap with numbers ("500 signups in first 2 hours" — social proof compounds); founder story post; deep-dive content later in the week

## Structure E: Thought leadership post

```
Line 1: the strong claim, stated flatly
Lines 2–4: evidence — a number, an observed shift, a concrete example
Last line: invitation ("Curious how others handle this") or link to full essay
```

Note: Cursor's data shows product announcements outperform thought leadership for company accounts. Put opinions on personal accounts; put product on the company account.

## Visual rules

- Demo video beats everything. Under 60 seconds, starts mid-action, no intro slide.
- Code snippet images: use a consistent branded theme (tools: Carbon, Snappify). Show the minimal impressive path — 5 lines that do something real.
- Dark backgrounds pop in the feed (Supabase's brand advantage; deliberate choice).
- Memes work when they target your exact user's daily pain — the joke IS audience selection. If a meme is broadly funny to everyone, it's selecting no one.

## Voice AI adaptations

- The scroll-stopping artifact is a **playable call recording** — 15–30s clips where something impressive happens (interruption recovery, accent handling, sub-second response). Subtitle it; most feeds are muted.
- A **phone number in the tweet** ("call it yourself") is the Voice AI equivalent of a live demo link — zero-friction, inherently shareable.
- Latency numbers are the community's shared language: post time-to-first-audio with methodology. Developers screenshot benchmark charts.
- Voice demos that fail live are remembered; only post recordings you have re-verified.
