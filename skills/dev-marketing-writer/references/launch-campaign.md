# Launch Campaign Choreography

How to orchestrate a launch as a campaign rather than a single announcement. Based on Supabase's Launch Week methodology (their own published playbook), plus Resend and Linear launch week practices.

## Why campaigns beat single-day launches

- Developers need **7–12 touchpoints** before adopting a tool. A single-day launch is one touchpoint.
- Single-launch traffic decays within 48 hours; there's no recovery path if a demo breaks on the day.
- Each day of a campaign produces a durable asset (blog post, video, benchmark) that keeps working via search and shares long after the week ends.
- Batching releases into a named event ("Launch Week") makes a normal sprint feel special. Predictability is the mechanic: developers learn something new lands every morning.

## The operating model: fixed timeline, flexible scope

Supabase's core rule. Pick an arbitrary date ~3 months out; ship the most ambitious set possible by then; anything that slips moves to the next launch, no drama. This recreates accelerator-style deadline pressure internally ("our very own Demo Day").

Planning sequence (adapted from Supabase):
1. **Planning meeting**: whole-company brain dump ("the Universe board" — everything about product, users, goals) to get everyone out of their silo, then goal/metric review, then idea listing. ~12 candidate projects, each with a lead.
2. **Kick-off**: internal theme/branding (deliberately fun), timeline, current announcement list.
3. **Build phase**: leads run their own process. Ship features early to existing users (quiet release); save the loud marketing for the campaign (see "launch twice" principle).
4. **Pre-launch week**: freeze prod deploys — everything major ships to production a week early. Content written and edited (takes 2+ iterations). Cross-company/press coordination starts 3 weeks out.
5. **Launch week**: execute the run sheets.
6. **Rest**, then **retrospective** — read the retro notes aloud at the next planning meeting. Always re-ask: "Is this format still working?"

## Day-by-day content structure (5-day template)

| Day | Content | Goal |
|---|---|---|
| 1 | Biggest feature + demo; waitlist gets early access at 6am, public at 8–10am | Maximum reach, signups |
| 2 | "Why we built this" founder/team story | Emotional connection, shares |
| 3 | Customer/beta case studies with real numbers | Social proof, trust |
| 4 | Technical deep dive (architecture, benchmarks) | Credibility, HN material |
| 5 | Community day / integrations / "one more thing" | Ecosystem goodwill, finale |

Per-feature channel fit (Supabase's practice): the person who built it picks the channels. UI feature → Product Hunt + design communities. Infra → Hacker News + engineering channels. Integration → co-marketing with the partner (start coordination 3 weeks early).

## Launch-day run sheet (from Supabase's actual schedule)

```
7:30  Reminder tweet (event starting soon)
7:55  Product Hunt goes live
8:00  Blog post goes live
8:05  Launch tweet
8:10  Share with angels / amplifier list
8:15  Twitter Space / livestream begins
...   Retweet community reactions throughout the day
+1d   Recap with numbers ("X signups in first 24h")
```

Have the founder personally answer comments and DMs on Day 1 — irreplaceable word-of-mouth fuel.

## After the campaign

- Day 7: collect testimonials from early adopters while the experience is fresh; these feed case studies and the next launch's Day 3.
- Route in-product high-intent signals (free-tier limits hit, integrations completed) to sales follow-up.
- Nurture sequence for visitors who didn't convert: education → use cases → social proof.
- Retro: what worked, what broke, what to change. The retro is the compounding asset.

## Team-size reality check

Launch weeks work from 2 people up (Supabase started theirs at ~5 people). For a small team: 3 real features + 1 story day + 1 community day is a legitimate week. Don't fake five headline features; developers can tell filler from substance.
