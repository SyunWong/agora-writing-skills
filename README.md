# Agora writing skills

Claude skills the Agora DevX team uses to write developer content: tech references, scenario posts, launch copy and Reddit posts. Each skill is a folder with a `SKILL.md`. Claude loads it when a request matches the skill's description.

Maintainer: June Wang. Private repo, internal use.

## Which skill for which piece

| You're writing | Skill | Notes |
| --- | --- | --- |
| A concept explainer, an X vs Y comparison, or a troubleshooting piece for the agora.io blog | `tech-reference-writer`, template A | Product appears in one section only |
| A reference tied to an Agora feature, with config code and a recipe to try | `tech-reference-writer`, template B | Needs a docs feature page and a runnable recipe. Provisional |
| One post per voice agent scenario repo (the Top 10 series) | `scenario-blog-writer` | Includes a distribution plan |
| Launch posts, X posts, changelogs, release notes, launch weeks | `dev-marketing-writer` | Patterns from Vercel, Supabase, Linear, Resend, Cursor, Stripe |
| Reddit posts and comments | `reddit-writer` | Never names Agora or its products |
| Anything that gets sent, posted or published | `humanizer` | The other skills call it for voice. Install it with any of them |

Not covered yet: tutorials and recipe walkthroughs (scenario description, then code).

## Install

**From Claude (recommended).** Ask June to share the skill with you from Customize > Skills. Shared skills arrive turned off: find them under "Shared with you" and switch them on. You get her updates automatically.

**From this repo.** Run `scripts/package.sh`, which writes one zip per skill to `dist/`. Upload each zip in Customize > Skills. Uploaded copies don't update themselves: pull and upload again after changes.

Install `humanizer` alongside any other skill here. Without it, the voice layer those skills point to doesn't run.

## How the skills are built

Every skill splits its rules into layers that apply in order (inputs, truth, structure, search, voice, publishing notes), and a later layer never overrides an earlier one. If search wants a claim the truth layer can't back, the claim goes. Each skill also ends with a final check and a "How this goes wrong" list taken from real drafts.

Rules marked `(provisional)` come from one post and get confirmed or dropped after the next one.

## Known gaps

- `humanizer`'s Chinese layer loads reference files from the 内容生产 project in claude.ai. Those files aren't in this repo, so outside that project the Chinese rules run from the summary in `SKILL.md` only.
- `tech-reference-writer` template B is based on one post (Voice AI interruption handling). Check whether its core section holds up on a topic with only one or two decisions.
- `reddit-writer` points to three reference files (`post-types.md`, `comment-types.md`, `anti-slop.md`) that were never added. Until they are, it runs from the rules in its `SKILL.md` and says which file was missing.

## Changing a skill

The copy in Claude and the copy here are separate. When you change one, update the other in the same day.

1. Edit the skill in Claude, or edit `skills/<name>/SKILL.md` here and upload it.
2. Commit here with a message that says what changed and which post taught it.
3. Add a line to `CHANGELOG.md`.
