# AGENTS.md

Shared instructions for every AI agent that works on Agora DevX content: OpenClaw (in Lark), Codex and Claude. Read this file first, then the files it points to.

Owner: June Wang. If something here conflicts with what June says in the current conversation, June wins. Tell her about the conflict so this file gets fixed.

## Read order

1. `context/positioning.md`: what Agora ships for developers and how we place it
2. `context/messaging.md`: names, claims we make, claims we don't
3. `context/audience.md`: who we write for and what they struggle with
4. `context/voice.md`: how the writing sounds, and which skill owns which format
5. `state/priorities.md`: what is in flight this week
6. `decisions/log.md`: why things are the way they are

For a writing task, also load the matching skill under `skills/`. The table in `README.md` says which.

## Who may edit what

| Path | Who writes | How |
| --- | --- | --- |
| `context/` | June only | Agents propose changes in a pull request. Never push to it directly |
| `skills/` | June, or an agent on her request | Branch and pull request. Update `CHANGELOG.md` in the same change |
| `state/priorities.md` | OpenClaw | Rewrites it as work moves. Other agents read it and may propose a line |
| `decisions/log.md` | Any agent, June | Append only. Never edit or delete an earlier entry. Correct with a new entry |

No agent pushes to `main`. No agent commits secrets, API keys, internal test data or unpublished numbers.

## Division of work

| Agent | Does | Hands off |
| --- | --- | --- |
| OpenClaw | Morning plan, Reddit and topic scans, 48-hour post metrics, project tracking, Friday report. Lives in Lark, where colleagues send it links | Topics worth a post and metric outliers, as a line in `state/priorities.md` |
| Codex | Demo and recipe code, repo work, tutorial drafts next to the code | A repo that passes the readiness check in `scenario-blog-writer` |
| Claude | Strategy, tech reference and scenario posts, launch copy, launch video, message polish, reviews | Drafts with open questions listed, plus a log entry for any decision made |

## Hard rules for every agent

1. Reddit content never names Agora, an Agora product, an Agora domain or an Agora org repo. An account was banned for it.
2. Nothing gets published, posted or sent by an agent. Agents draft. June or a named colleague ships.
3. ClickUp is a shared company workspace. Reading is fine. Creating tasks, assigning people or changing status needs June's yes first.
4. A fact about Agora's product (field name, parameter, number, feature name) is checked against docs.agora.io, the API reference or the recipe before it goes into a draft. If the sources disagree, say so and list it for engineering. Don't pick one quietly.
5. Unverified or internal claims are marked `[CONFIRM]` in the draft and collected in one list at the end.
6. When the source material is too thin for a good piece, say what is missing and who could supply it. Don't pad.
7. Product names follow `context/messaging.md` exactly.

## Content workflow

Every blog post goes through the same six stages. A stage is done when its output exists.

| Stage | Who | Output |
| --- | --- | --- |
| 1. Brief | June, with Claude | Format, target query, reader |
| 2. Brief scan | `content-reviewer` in brief-scan mode | What the top pages have, a material checklist with owners, and a go or wait call |
| 3. Draft | The matching writing skill, once the call is go | Draft plus one numbered list of open `[CONFIRM]` items |
| 4. Review | `content-reviewer`, in a fresh context that did not write the draft | Scorecard: raw and capped score, fix list ranked by points, score if fixed, log line |
| 5. Revise | Writer for writer fixes. June and engineering for the rest | New draft, then a follow-up review of the changed lines |
| 6. Publish and check | June ships. Her metrics agent collects results | The scorecard's log line in `decisions/log.md`, results added by the metrics agent |

Rules:

- The writer never scores its own draft. Scores come from stage 4 only.
- No drafting on a wait call. Get the named material first. Most low scores are missing material, and it is cheapest to get before the draft exists.
- Publish at 85 or above with no cap in force. Between 70 and 84, revise. Under 70, the piece needs new material before more editing.
- A piece with no first-hand evidence (a measurement with its method, an observed result, a failure the author hit) is capped at 84.
- Open `[CONFIRM]` items go to engineering as one message with a due date, three working days by default. On the due date June decides per item: wait, or cut or reword the sentence so it claims nothing unconfirmed. Nothing ships with an open mark.
- Two review rounds at most. If the score is still under 85 after the second, the gap is missing material: take the "can't be fixed by editing" list to whoever can supply it.

## Publishing flow

- One ClickUp ticket per website blog post. The ticket notifies design for the cover image.
- Drafts live in GitHub. If a post belongs to a code repo, the post lives in that repo. Review happens in a pull request.
- Website posts (launches, tech references, scenario posts): agora.io first, then Medium by canonical import, then dev.to.
- Medium-only posts (tutorials, Dev Digest): Medium directly.
- Bylines use "June Wang". Tech references carry a named technical reviewer or co-author.

## Handing work between agents or chats

Write the handoff down here so nobody has to retype context:

1. Append to `decisions/log.md`: date, what was decided, what was rejected, what is still open.
2. If files matter (HTML source, storyboard, draft), name them and where they are. Attachments don't carry between Claude chats.
3. The next agent reads the last ten log entries before starting.
