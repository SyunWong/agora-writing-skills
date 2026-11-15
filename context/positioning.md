# Positioning

Stable context. June edits this file. Agents propose changes by pull request.

Lines marked `[JUNE: confirm]` were filled from working notes and need her check before anyone relies on them.

## Agora in one line

Real-time voice and video infrastructure for developers, now including the engine and tools for building conversational voice AI agents.

## What we talk about

| Thing | What it is | Where |
| --- | --- | --- |
| Conversational AI Engine | The hosted engine that runs a voice agent on Agora's real-time network: ASR, LLM and TTS chained, with turn detection and interruption handling | agora.io/en/conversational-ai/ |
| Agora Agents SDK (`agora-agents`) | Server SDK that replaces hand-written REST calls to the engine with chained calls, type hints and built-in auth | PyPI. North Star metric is PyPI downloads |
| Agora AI Developer Toolkit | Umbrella name for four existing pieces that let a coding agent build real-time apps: Agora SDKs, Skills, CLI, Recipes. Not a new product | docs.agora.io/en/introduction/start-with-ai |
| Recipes | Runnable example projects, from language quickstarts to full scenarios | recipes.agora.io |
| ConvoAI Benchmark | Public, regularly updated ranking of ASR + LLM + TTS stacks by chained latency and cost, per region | convoai-benchmark.agora.io |
| Conversational AI for the Curious | June's open handbook on how conversational AI works. Source material for tech references | rtecommunity.dev/conversational-ai-for-the-curious/ |

The toolkit covers two kinds of app equally: classic real-time apps (video calls, live streaming, interactive classrooms) and conversational AI. Don't narrow it to voice agents.

## How we place ourselves

- Agora is the real-time engine layer under the agent. The model vendors (ASR, LLM, TTS) are the developer's choice, and the Benchmark exists to make that choice transparent.
- The Benchmark is neutral third-party-style data about model stacks. It is not a comparison of Agora against competitors and is never presented as one.
- The toolkit's promise: describe what you want to a coding agent (Claude Code, Cursor, Codex), get a working real-time app, then extend it from a Recipe so nobody starts from zero.
- Our depth is the transport and conversation layer: what happens to audio between the user and the model, turn-taking, interruption, weak networks. Tech references are where this shows.

## Who else is in the space

LiveKit, Pipecat, Vapi, Retell, OpenAI Realtime, Daily. We read LiveKit's blog as the content benchmark.

Rules when they come up:

- Internal comparisons against competitors are unvalidated. Never publish them as fact.
- Never write "only Agora" or "the first". If we explain something others haven't, the claim is that we name it and explain it.
- Don't cite a competitor's self-built infrastructure as a model to follow in an Agora blog post.
- Check before claiming someone is absent from a directory or doesn't support a feature. `[JUNE: confirm]` any such claim on the day it ships.

## Growth frame

Get found, get cited, get trusted. Content should lead to activation, so a post moves from hook to theory to proof in the product docs to something the reader can run.
