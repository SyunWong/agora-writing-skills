---
name: launch-video
description: "Use when making, storyboarding or revising a short promo video for an Agora product or developer-tool launch (30 to 60 seconds, for X, LinkedIn or YouTube), or when June asks for launch video frames, a storyboard, or a new cut. Holds the house look, the storyboard-first process and the render notes. Load the video-making skill alongside it for rendering."
---

# Launch video

Every Agora DevX launch gets a short promo video. This skill keeps the look and the process from the first one (the Agora AI Developer Toolkit video) so the next one doesn't start from zero.

Everything here comes from one video. Rules marked `(provisional)` get confirmed or dropped after the second.

The rules are layered and apply in this order. A later layer never overrides an earlier one.

## Layer 1: inputs

Collect these before drawing anything. Ask only for what is missing.

- What is launching, and the launch blog or release note if it exists. Video copy comes from that text, not from new claims.
- Where it runs and how long. Default: 1920x1080, landscape, 30 to 60 seconds, English, X and LinkedIn.
- The current Agora logo file. Uploads don't carry over between chats, so ask for it again each time. Don't redraw the logo from memory.
- The HTML source of the last video, if this is a revision or a sibling video. Same reason.

Don't ask for screen recordings up front. June adds her own recordings at the end. Leave clearly sized slots for them.

## Layer 2: truth

- No internal test numbers on screen (success rates, run counts, median times) unless the method is public. A recording with a visible timer carries the claim better.
- No Recipe count. Some Recipes are language quickstarts, so a total overstates the scenario catalog.
- Any Recipe or scenario named on screen must be live on recipes.agora.io on publish day. Check the site, don't trust a list.
- Prefer broadly relatable scenarios (customer support, hotel reception, speaking coach). Leave medical and recruitment scenarios out of promo material.
- Commands and code on screen are real. Pull them from the Agora skill's CLI references or the docs, never from memory.
- Product names as written in `context/messaging.md` of the agora-writing-skills repo. No "first" or "only" claims.

## Layer 3: process

The order matters more than any visual rule. Skipping a step cost several full rebuilds on the first video.

1. **Storyboard first, as designed key frames.** One styled frame per shot at full size, in the house look. Not a wireframe, not a shot table, not a moving demo. She reviews shot composition here.
2. **Change one thing per round.** When she asks about composition, answer about composition. Don't restyle at the same time. When a direction is in doubt, show variants side by side in one contact sheet (a URL-hash switch on one HTML file does this cheaply) and let her pick.
3. **Lock the look, then animate.** Motion starts only after she approves the frames. Team feedback usually arrives at this point, so expect one more round.
4. **Stills before any render.** Screenshot the busiest moment of each scene and look at them. Then render once.
5. **Deliver** the MP4, the HTML source, and a list of the recording slots with their durations.

When she says a version "feels AI" or "looks templated", the problem is the composition conventions (centered headline, gradient, grain, corner labels), and a palette change won't fix it. Go back to step 1.

## Layer 4: structure

Recording-led `(provisional)`. Real screen recordings carry the proof. Designed motion is limited to the opening, transitions, any catalog wall and the end card.

The toolkit video's order, as a starting template:

1. Opening: the prompt as large text ("Build me a voice agent")
2. The tool at work: CLI or terminal
3. The result: a live voice conversation
4. Breadth: a wall of Recipe cards, scrolling vertically
5. Foundation: the SDK layer underneath
6. End card: name, one line, one link

For a different product, keep the shape (prompt or problem, the tool working, the result, breadth, end card) and drop what doesn't apply. Burn in captions wherever speech carries meaning, since most views are muted.

## Layer 5: house look

Settled after team review, November 2026.

**Use**

- Dark background throughout. Simple and flat.
- Agora blue with the teal-green from the website's dot matrix. Two color families, no more.
- Mona Sans for every piece of text, including labels, terminal lines and commands. Slightly heavier than regular weight. Install with `@fontsource-variable/mona-sans`.
- A dot-matrix texture as the one moving element that runs through every scene and every transition. Sound is shown as a dot-matrix wave.
- Rounded corners and fine detail on every panel and card.
- Type sized with room around it. Headlines don't fill the frame.
- The Agora logo's "a" may replace a letter in a headline word (it went into "agent", not the article "a").
- Soft crossfades, with the dot matrix morphing in place between scenes.
- Brand reference: the new Agora website (agora-website-2026-main.vercel.app/en/), especially the "What developers say" card stack.

**Rejected, don't bring back**

- Pure white and blue (reads as an older-generation internet company) and blue-only palettes
- Rainbow or multi-hue gradients (reads as ElevenLabs), saturated color blocks
- Aurora or northern-lights backgrounds
- Film grain, glossy 3D orbs, glowing "cinematic" terminals
- Serif headlines, italic emphasis, a second monospace font
- Pixel-art styling
- Thin vertical waveform bars, the planet-arc end card
- Square-cornered flat layer slabs
- "Title on top, small box in the middle" slide composition
- Very large thin headlines that fill the frame
- Corner labels, page numbers, small info text in the frame corners
- A light sweep or wipe across the frame at scene changes

The target impression is a current Silicon Valley developer company that is still recognizably Agora. ElevenLabs, MiniMax and Vercel are references for restraint, and none of them should be mistaken for the result.

## Layer 6: build and render

Follow the `video-making` skill for rendering rules. Notes specific to this setup:

- One HTML file, one timeline. A single clock function (`setT(seconds)`) drives all animation state so any moment can be screenshotted.
- One persistent canvas draws the dot field. Each scene supplies a function `(x, y, t) -> [size, colorMix]`, and a transition blends the outgoing and incoming functions. This is what keeps the video from playing like a slideshow.
- Playwright with system Chrome (`executable_path="/usr/bin/google-chrome"`, `--no-sandbox`). Wait for `document.fonts.ready` before the first screenshot.
- Review stills as one contact sheet, not frame by frame.
- Render one file per scene and join them. After feedback, render only the scenes that changed.
- After any font change, search the whole file for leftover font-family declarations. A missed monospace label was caught by eye on the first video.

## Final check

- [ ] Every on-screen name, command and scenario verified against a live source
- [ ] No internal numbers, no Recipe count
- [ ] One font family in the whole file
- [ ] Nothing from the rejected list
- [ ] Recording slots sized and listed with durations
- [ ] Captions on every spoken part
- [ ] Stills reviewed before the full render

## How this goes wrong

- **Animating before the frames were approved.** Three full versions were built and thrown away.
- **Answering a composition question with a restyle.** She asked about the storyboard and got new colors.
- **Fixing "too AI" with a new palette.** Four color themes later, the layout was still the problem.
- **Drifting toward a reference brand.** A clean gradient look came out as ElevenLabs, not Agora.
- **Trusting a remembered number.** The Recipe count on the site was not the one in the brief.
- **Mixed fonts between versions.** Terminal and label text stayed monospace after the switch to Mona Sans.
