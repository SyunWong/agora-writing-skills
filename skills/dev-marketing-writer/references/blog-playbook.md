# Blog Playbook for Developer Marketing

Three archetypes, each with a distinct narrative structure. Choosing the wrong archetype is the most common failure — a launch post written like an essay buries the news; a changelog written like a launch post exhausts readers.

## Contents
1. [Archetype A: Launch post ("Introducing X")](#archetype-a-launch-post)
2. [Archetype B: Changelog / release notes](#archetype-b-changelog--release-notes)
3. [Archetype C: Thought leadership essay](#archetype-c-thought-leadership-essay)
4. [Voice AI adaptations](#voice-ai-adaptations)

## Archetype A: Launch post

Model: Vercel's "Introducing Fluid compute" (3-min read), Stripe's product announcements, Supabase launch week posts.

**Title formula:** `Introducing [X]: [benefit clause]`
- "Introducing Fluid compute: The power of servers, in serverless form"
- The subtitle states the *tension resolved*, not a feature list.

**The 6-beat structure:**

1. **Cold open on the status quo tension** (2–3 short paragraphs, product NOT mentioned). Name the tradeoff developers currently live with. Vercel: "dedicated servers provide efficiency... but over-provisioning. Serverless improves this... but cold starts." The reader must nod twice before you pitch once.

2. **The turn.** "It's time for a new approach. Today we're introducing [X]" + one-sentence definition + the headline metric ("reduce compute costs by up to 85%"). One headline number, chosen carefully — this is what gets quoted, screenshotted, and put in headlines by others.

3. **"What is X"** — scannable principle bullets (5–7). Each bullet a capability, not a component.

4. **Benefit-titled deep-dive sections.** H2s state benefits, not features: "Smarter scaling with better cost efficiency", "Cold start prevention for reduced latency" — not "The Scheduler" or "Architecture". Within each section: how it works (real technical depth — this is where the engineer's voice matters) + proof + links to related prior posts (compounds SEO and narrative continuity).

5. **Get started.** Exact steps, availability, pricing. Emphasize zero friction where true: "available for all users today... no migrations or application code changes required." Every reduction in stated friction increases conversion.

6. **Close: docs/changelog links + acknowledgments.** Vercel credits Google Cloud Run as prior art. Crediting competitors reads as confidence and earns goodwill from the engineers who built those systems.

**Length**: 3–6 min read for the launch post itself. If the architecture deserves 20 minutes, write a separate engineering deep-dive and link it — different post, different channel (that one goes to Hacker News).

**Who writes it**: the engineer who built the feature, edited for structure (Supabase's rule). This is why their posts contain real technical decisions instead of marketing paraphrase. The builder also knows which channels fit: UI feature → Product Hunt/design channels; infra → HN/engineering channels.

## Archetype B: Changelog / release notes

Model: Linear's changelog (the industry reference), Resend's changelog-as-marketing.

**For a headline feature entry:**

1. **Video or GIF first.** Before any text.
2. **Continuity opener** — one paragraph placing this release in the arc: "Earlier this year, we launched Linear Agent... Since then, we've added Code Intelligence... Today we're closing the loop: **Linear Agent can now write code.**" The bold one-liner is the announcement; everything before it is momentum.
3. **How to use it** — 2 short paragraphs, imperative mood ("Start a session by assigning an issue...").
4. **Benefit-titled H2s** (max 2–3), each 2–3 paragraphs.
5. **Dogfooding proof**: "Linear uses this workflow internally to resolve roughly 30% of incoming bug reports." The single most convincing sentence in any changelog — and the cheapest proof to obtain. Always ask the team for internal usage stats.
6. **Availability and pricing** — plans, settings path, docs link.

**For routine items (fixes/improvements):**
- One line each, user-impact first: "Move, label, or close multiple issues at once" — never "Added batch operation support."
- 2–3 sentences maximum. Every word earns its place.
- Group by area. Consistent cadence builds a check-in habit — predictability is the growth mechanic.

**Resend's addition**: write changelogs as if a senior engineer is scrutinizing them. Include code snippets and migration guides *in the changelog itself*. The changelog answers "can I actually use this, today, in my stack?" — documentation IS marketing.

## Archetype C: Thought leadership essay

Model: Linear's "Rethinking the startup MVP" (Tuomas Artman), Stripe's narrative memo culture.

**Purpose**: sell the worldview in which your product is the obvious choice — while never pitching the product. The essay earns trust precisely because it doesn't sell.

**Structure:**

1. **Named human author.** Essays come from people, not brands. Byline + their X handle.
2. **Standfirst thesis, stated in the first two sentences** — ideally contrarian about something the reader thinks they understand: "Today's MVP is often about building a better version of an idea, not validating a novel one. It's not good enough to be first. You have to out-execute from day 1."
3. **Reframe a familiar concept**: "X as we knew it" vs "X as it exists today", with the reasoning for why the world changed. Use recognizable examples (Airbnb needed idea-validation in 2009; nobody does now).
4. **Your company's experience as primary evidence — with uncomfortable specifics.** Linear shares the actual six questions on their waitlist form, the "Friends of Linear" pay-if-you-want experiment, the friend who said he didn't need the product. Specifics you'd hesitate to share are exactly what make the essay credible and cited.
5. **Extractable lessons** as bolded one-liners — these become the tweets and citations: "**The waitlist is a great tool to maintain narrow focus.**"
6. **Recap + open door**: bullet summary, then "I'm available on X @handle for questions."

**Register**: first person, plain, concrete. A good essay teaches something true even to someone who will never buy your product.

## Voice AI adaptations

- Launch post cold-open tensions that resonate in voice: latency vs quality tradeoffs, brittle turn-taking, IVR-era expectations vs LLM-era capability, per-minute cost opacity, testing/eval pain for conversational agents.
- Embed audio players or demo videos where Vercel would put a diagram. A launch post about naturalness with no audio is self-refuting.
- Benchmark tables (time-to-first-audio, WER, interruption recovery, concurrency, $/min) with published methodology — reproducibility is the credibility multiplier, and benchmark posts are what AI search engines and comparison pages cite.
- Strong changelog dogfooding line: "our own support line has run on this model since March."
- Thought leadership territory with citation-magnet potential: "why sub-second latency changes conversation design", "evals for voice agents", "what the IVR era got wrong". Own reframes of concepts every voice developer thinks they understand.
