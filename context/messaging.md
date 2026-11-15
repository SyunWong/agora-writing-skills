# Messaging and terminology

Stable context. June edits this file. Agents propose changes by pull request.

## Names

Write them exactly like this.

| Write | Not |
| --- | --- |
| Agora AI Developer Toolkit | AI Development Toolkit, Agora Tool Kit, Builder Kit, dev kit |
| Agora SDKs (the full SDK suite) | "the Agents SDK" when the whole suite is meant |
| Agora Agents SDK, `agora-agents` in code | Agent SDK, Agents-SDK |
| Skills, CLI, Recipes (capitalized as toolkit parts) | skills, cli, recipes |
| Conversational AI Engine | Convo AI, ConvoAI (fine inside the team, not in published copy) |
| ConvoAI Benchmark | Agora Benchmark |
| June Wang (byline) | June |
| 实时互动 AI 开发工具包 (Chinese name of the toolkit) | |

Toolkit parts always come in this order: Agora SDKs, Skills, CLI, Recipes. MCP, docs and open source are not parts of the toolkit.

## Install and entry points

Check these against the live docs before publishing. They have differed between pages.

- Skills: `npx skills add github:AgoraIO/skills`
- CLI: `curl -fsSL https://dl.agora.io/cli/install.sh | sh`
- Entry page for coding agents: https://docs.agora.io/en/introduction/start-with-ai
- Repos: github.com/AgoraIO/skills, github.com/AgoraIO/cli

## What we want people to take away about the toolkit

1. It works the first time more often than building by hand.
2. The four parts are built and updated together, so they don't drift apart.
3. Recipes cover common scenarios, so nobody starts from zero.

Scenarios that land with a broad audience: customer support, hotel reception, speaking coach, AI meeting assistant, AI receptionist, spoken translation.

## Claims we don't make

- **Internal test numbers** (success rates, run counts, minutes to first success) stay out of public copy until the method is public. Show a recording instead.
- **A Recipe count.** Some Recipes are language quickstarts, so a total overstates the scenario catalog.
- **A Recipe by name** unless it is live on recipes.agora.io on publish day.
- **Medical and recruitment scenarios** as promo examples.
- **"Only", "first", "best".**
- **AIQoS** as a public term. Agora hasn't used the name externally. Wait for the tech team's answer. `[CONFIRM]` it in any draft.
- **Latency and cost figures inside scenario posts.** They belong to the Benchmark.

State what the product does plainly. Hedges such as "in our tests" weaken a claim we are allowed to make, and a claim we can't back shouldn't be there at all.

## Topics and framing

- English content takes no China-related angles and no Chinese-language topics.
- The RTE conference is a source of data and talks. It is not a headline. Tech references mention it rarely and don't lean on named speakers.
- Tech references keep external citations few. The voice is Agora's own technical view.
- Plain "how to integrate Agora" pieces are out. Build every tutorial around a concrete scenario with something to see.
- After an event, no self-praise. Let developers do the praising.

## Channel rules

| Channel | Rule |
| --- | --- |
| Reddit | Never names Agora or its products. Posts are built on June's own demo builds |
| Agora official X | Posts first on launches. An outside developer quotes it in their own voice |
| Team X account | New. Reposts relevant Reddit posts only with the author's permission |
| agora.io blog | Launches, tech references, scenario posts |
| Medium | Tutorials and Dev Digest directly. Website posts arrive by canonical import |
