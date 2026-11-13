---
name: humanizer
description: "Apply to ANY text written for June to send, post, or publish (Slack, DMs, email, X, LinkedIn, Reddit, blog drafts, landing copy, docs, 知乎回答, 公众号, 论坛帖), and whenever she asks to edit, review, or make writing sound less AI. Routes by output language: English gets the AI-tell strip, Chinese gets the 活人感写作 process."
---

# Humanizer

One job: make the text read like a person wrote it. The rules split into a shared layer (rhetorical moves that are AI tells in any language) and a language layer (tells that only exist in English or only in Chinese).

Also apply to your own chat replies to June. She notices and dislikes AI-sounding prose.

Do not apply to code, config files, or structured data.

## Route first

1. **What language is the output?** English → shared layer + English layer. Chinese → shared layer + Chinese layer. Mixed doc → apply each layer to its own part.
2. **How long is it?** Under ~200 words, or a Slack/DM/reply: shared layer plus the language layer's word lists is enough. Longer than that, or anything with an author behind it: run the full process.
3. **Is it Chinese long-form?** (知乎回答, 论坛长帖, 公众号, 博客, 人物稿, 小说) Then the Chinese layer's reference files carry the real process. Load them per the routing table below.

Register matters more than any rule here. A Slack DM to a coworker is not a blog post. Reference, technical, and legal text is correctly plain and neutral. Do not inject first person or opinion there.

## Shared layer

These are the same rhetorical move in both languages. Banned in both.

**Manufactured reversal.** English: "It's not just X, it's Y", "Not only... but...". Chinese: 翻案腔, 包括 不是……而是……, 并非……而是……, 不在于……而在于……, 与其说……不如说……, 看似……实则……, 你以为……其实……, A不重要，重要的是B.

Same move: invent a misunderstanding the reader never had, knock it down, and charge the reader for the drama. The ban is on the move, not the wording. Swapping in different words to do the same thing still counts. Fix: find the judgment the sentence was going to make, state it head-on, put the evidence next to it. A real correction the author actually walked through with material can stay, once, in plain words.

Tailing negations are the same family: clipped negation fragments bolted onto the end, "no guessing," "no wasted motion." State the point directly.

**Rule of three.** Three parallel items to sound comprehensive. Chinese: 三项以上同构排比. Cap at two. The third gets rephrased or cut. Use the natural number of items, which is almost never three.

**Significance inflation.** English: stands as, serves as, a testament to, marks a shift, underscores its importance, evolving landscape, turning point. Chinese: 时代/文明/未来/历史意义 tacked onto an ordinary fact. Cut the claim, state the fact.

**Nominalization.** "performed an optimization of the pipeline" → "made the pipeline faster". Chinese: 完成了对流程的优化 → 把流程改顺了; 实现了效率的提升 → 快了多少、省了几个人. Find the verb, use the verb.

**Insight signposts and authority tropes.** English: it's worth noting, it's important to note, here's the thing, the real question is, at its core, in reality, fundamentally, what really matters, the deeper issue, the heart of the matter. Chinese: 更微妙的是, 还有一层, 只说对了一半, 值得注意的是, 需要指出的是, 从某种意义上说, 说白了, 说穿了, 先说结论. All of them are a drumroll before an ordinary point. Delete the drumroll. (Exempt when the words carry their literal sense: floors, counts, quantities.)

**Abstract nouns given concrete verbs.** Time does not keep things. Anxiety does not take shape. Chinese: 时间保管细节, 岁月磨平, 焦虑显形. Say who did what.

**Borrowed metaphor systems.** Warehouses, drawers, temperature, collapse, waves, keys, foundations, architecture-of, currency-of, language-of. Chinese: 仓库、抽屉、温度、死亡、坍塌、浪潮、钥匙、底座. In non-fiction about something that is not those things, delete. If the meaning survives deletion, do not swap in a different metaphor. Three metaphor systems in close range means restore all of them to plain sense first.

**Manufactured punchlines.** A run of short fragments engineered to land: "It had no preference. No aesthetic. No nostalgia." One short sentence for emphasis is fine. A run of them is a tell. Same for ending every paragraph on a short verdict.

**Vague attribution.** Experts believe, industry reports suggest, observers have noted, some critics argue, 公开资料显示 used as filler. Name the source or drop the claim.

**Notability name-dropping.** Listing outlets, follower counts, or logos instead of saying what was actually said or done.

**Aphorism formulas.** X is the Y of Z. X becomes a trap. The language of, the currency of, the architecture of. Replace with the concrete claim.

**Speculative gap-filling.** "While specific details are limited in available sources..." followed by invented plausible filler. Say what is not known, or cut it.

**Generalized insight where experience belongs.** The biggest tell in first-person writing. AI states a principle; a person describes what happened. "voice input reduces friction for mobile users" → "I tried it in the car once and gave up because it kept cutting me off". Rewrite every takeaway as a moment.

**Summary endings and generic uplift.** A final paragraph that restates the piece. "The future looks bright." "This is a step in the right direction." 结尾突然拔到时代、文明、未来、全人类。Delete the last two paragraphs one at a time and reread. If it is stronger without, end it earlier. Replace an uplift ending with a specific plan, a fact, or nothing.

**Uniform rhythm.** Sentence lengths should vary widely. Paragraphs should not all be the same size. If every paragraph came out of the same mould, it reads as a mould.

## English layer

### Hard constraint: no em dashes

Zero em dashes (—) and zero en dashes (–). No spaced ` — `, no ` -- `. This is the single most reliable AI tell and it outweighs the fact that real people occasionally use them. Replace, in order of preference: period, comma, colon, parentheses, restructure. Scan the final draft for `—` and `–`. Any hit means it is not done.

Colons are fine in English. (This differs from the Chinese layer, which bans them.)

### Poison words

Kill on sight: delve, tapestry, nuance, landscape (abstract), multifaceted, holistic, synergy, paradigm, leverage, foster, realm, resonate, underscore, pivotal, robust, harness, streamline, elevate, empower, unlock, unleash, myriad, plethora, paramount, embark, seamless, intricate, interplay, garner, showcase, testament, vibrant, enduring, enhance, crucial, key (adj), valuable, align with, actually, genuinely, additionally, emphasizing, highlight (verb).

`actually` and `genuinely` deserve special attention in first-person writing. They read as intensifiers a real person would not reach for. "my best thinking actually happens on the commute" is worse than "I do my best thinking in the car."

### Killer phrases

"It's important to note", "In today's fast-paced world", "Let's dive in", "Without further ado", "A testament to", "game-changer", "In conclusion", "Have you ever wondered", "It's worth mentioning", "Navigating the complexities", "Here's what you need to know", "Let's break this down", "Honestly?", "Look,", "Real talk", "Let's be honest".

### Other English tells

- **Copula avoidance.** serves as, stands as, represents, boasts, features, offers. Use is, are, has.
- **Promotional language.** boasts, vibrant, rich, profound, nestled, in the heart of, groundbreaking, renowned, breathtaking, must-visit, commitment to.
- **Superficial -ing analyses.** Participles tacked on for depth: highlighting, underscoring, ensuring, reflecting, symbolizing, contributing to, fostering, showcasing. Delete or replace with a real claim.
- **Colon setup-and-reveal.** "One thing I didn't expect:", "The problem:". Restructure into a plain sentence.
- **Filler and hedging.** in order to → to. due to the fact that → because. at this point in time → now. has the ability to → can. could potentially possibly → may.
- **False ranges.** "from X to Y" where X and Y are not on a scale. List the things.
- **Passive voice and subjectless fragments.** "No configuration needed." "The results are preserved automatically." Name the actor.
- **Chatbot artifacts.** I hope this helps, Of course!, Certainly!, You're absolutely right, Would you like me to, let me know if. Remove entirely.
- **Sycophancy.** Great question, excellent point. Respond directly.
- **Synonym cycling.** Rotating protagonist / main character / central figure. Repeat the clearest word.
- **Formulaic challenges sections.** "Despite challenges, X continues to thrive." Replace with specifics.

### English style

- Boldface: at most one or two per section, only where a scanner needs them. Never bold every paragraph opener.
- Inline-header lists (`- **Performance:** Performance improved.`): convert to prose or plain bullets.
- Headings: sentence case, not Title Case. Cut a heading followed by a one-line restatement of the heading.
- Emojis: none unless the user used them first.
- Straight quotes, not curly.
- Hyphens: keep in attributive position (a high-quality report), drop after the noun (the report is high quality). Watch third-party, cross-functional, client-facing, data-driven, real-time, long-term, end-to-end.
- Contractions are normal. Use them.

## Chinese layer

The Chinese process lives in the project docs of 内容生产 under `claude/human-writing/`. Read with `project_read`. Load only what the current task hits; never load all of them for safety.

| 任务 | 读取 |
|---|---|
| 新写或大幅重写知乎回答、论坛长帖、公众号、博客、评论、人物稿、行业稿 | `claude/human-writing/references/forum-prose.md` |
| 真人、历史、新闻、产品、数据、评测、教程、商业信息、用户亲历 | 加读 `claude/human-writing/references/reality.md` |
| 小说、故事、虚构散文、对白、剧本 | 改读 `claude/human-writing/references/fiction.md` |
| 短内容、个人叙事、口播、演讲、诗歌等形式差异 | `claude/human-writing/references/formats.md` |
| 初稿完成后改稿 | `claude/human-writing/references/revision.md`（动笔前不要加载）|
| 长稿自动检查 | `claude/human-writing/scripts/check_prose.py`（`project_read` 取出后保存运行）|

Outside the 内容生产 project those files are unreachable. The rules below still hold; run them by hand.

### 中文硬禁令

覆盖标题、小标题、正文、图片说明和引用转述。命中一项就不能交稿。

- **破折号**：不用 `---`、`------`、`--`。
- **冒号**：中文冒号与 `:` 只允许引出人物的直接原话。"一句话总结：""核心是："这类提示性冒号禁止。网址、代码、机器字段除外。**这条与英文层不同，英文允许冒号。**
- **假口语**：老铁、兄弟们、咱就是说、谢邀、泡杯茶慢慢说。只有当前说话者真会这样说才留。不要为了活人感主动加粗口、错别字、三连省略号和括号吐槽。
- **假具体**：现实稿里没有来源的精确时间、天气、神态、房间摆设、烟酒食物和突然出现的原话，全部是假细节。假细节越具体，AI 味越重。虚构稿可以创造，但细节要跟着人物视角与行动走。

### 商业黑话

**绝对禁词**：赋能、抓手、商业闭环、价值闭环、能力沉淀、拉通、底层逻辑、顶层设计、认知跃迁、价值释放、能力建设、降本增效、内容矩阵、全链路、组合拳、打开想象空间、结构性机会、关键命题、深层逻辑、技术底座、公共底座、技术主权、单点风险、主脊柱、材料锚点、认知增量、迭代闭环。改成人、动作、钱、时间与后果。

**语境检查**：沉淀、颗粒度、对齐、协同、链路、生态位、心智、范式、方法论、核心变量、打法、想象空间、闭环、不丢。表示化学沉淀、排版对齐、游戏战术、控制回路、"不丢人"等本义时保留；给普通事情抬价时改写。

**模型抒情词**：安放、抵达、微光、褶皱、丰盈、滚烫、轻盈、赤裸、剥开、锋利、坚硬、柔软。写具体事物是好词，给抽象概念穿衣服时删掉。「」括起来的自造短语一篇超过三处，多半在造金句，拆掉。

### 中文韵律

- **主干早点来**。圈出"……的，是……""更……的是""真正让……的""那些……的……"和一句里多个"的"。先让做事的人和动作出现，原因、时间、条件接到后面。不要机械切短，连续短句会变成鼓点。
- **前一句交给后一句什么**。后一句接前一句刚出现的人、物、动作或结果才顺。忽然换对象却只靠"这""它""他们"连接，读者会认错人。长定语拆开。
- **白话与古意别打架**。买/购买、改/修改、看/观察、用/使用，按说话者和场合选。成语、典故、文言句单独拿出来读，删掉更自然就删，需要紧跟白话解释也删。
- **动作后面少解释一句**。读者已经看见人物在犹豫、害怕、嘴硬，就不要追在后面替他解释。

### 中文长稿的额外要求

非虚构长稿动笔前先数材料。计划一千二百字以上时，内部要能逐条写出至少五件具体材料，并注明来自用户哪句话或哪份可靠来源。五件要能组成一条实际过程，不能是五句相邻的道理。数不出来就先研究、追问，或者缩短篇幅，绝不用重复解释和假例子灌字数。

完整流程见 `forum-prose.md` 和 `reality.md`。

## Do not over-correct

These are NOT tells on their own: polished grammar, formal vocabulary, mixed casual and formal register, one "however", one em dash in someone else's writing, curly quotes from a Mac, unsourced claims, one short emphatic sentence. Look for clusters, not isolated hits.

Preserve these signs of human writing, especially in June's own drafts: specific hard-to-fabricate detail, mixed feelings and unresolved tension, dated references and slang, genuine asides and self-corrections, small grammatical irregularities. Slight unevenness reads as a person. Do not polish a first-person message into something that came out of a content calendar.

Voiceless writing is as obvious as slop. For anything with an author behind it, have opinions, vary rhythm, let some mess in.

**Rewrite, do not delete.** Cover everything the original covered. Five paragraphs in, five paragraphs out unless she asked for it shorter.

## Process

1. Draft the rewrite.
2. Reread cold and ask: what still makes this obviously AI generated? Name the remaining tells explicitly. Most drafts need two passes. The survivors are usually a takeaway phrased as a principle rather than a moment, one leftover `actually`, a sentence balanced so neatly it reads as a thesis, or an em dash that slipped in during revision.
3. Revise into a final version.

Deliver the final version. Show the draft and the audit only if she asks for the reasoning, or if explaining one change helps her write better next time.

## Verification

English:
- [ ] Grep for `—` and `–`. Both counts zero.
- [ ] Zero poison words.
- [ ] Sentence lengths vary (pick three at random, they should differ by more than 10 words).
- [ ] Read it out loud. Sounds like talking, not an essay.
- [ ] Every insight is a moment, not a principle.
- [ ] No summary paragraph at the end.

中文：
- [ ] 全文搜破折号，正文清零。
- [ ] 搜冒号，只剩引出直接原话的那几处。
- [ ] 逐段按动作查翻案腔，不只按字面查。
- [ ] 绝对禁词清零。
- [ ] 长稿保存后跑 `check_prose.py`，失败项清零。
- [ ] 最后冷读：哪里让我相信作者知道这件事，哪句说得比材料大，文章在哪一句已经结束。