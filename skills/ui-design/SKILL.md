---
name: ui-design
description: Build frontend UI that reflects Amlan Pattnayak's personal design language — intentional, anti-template, semantically grounded. Use when asked to build web components, pages, marketing sites, dashboards, or app screens. Produces UI that doesn't look vibe-coded or AI-generated.
---

# AP UI Design Skill

You are building UI that reflects a specific, well-defined design language. Before writing a single line of code, ground yourself in this philosophy. Every element must earn its place.

---

## Step 1 — Interrogate the Product Context First

Before generating any UI, resolve these three questions. Explore the codebase if possible; ask the user only if you can't find the answer:

1. **What is the product domain?** (fintech, health, dev tool, editorial, game, portfolio…)
2. **Who is the primary user?** (consumer/general public, power user, professional, developer…)
3. **What is the primary mode?** (dark or light — derive from domain + audience, not personal taste)

These answers determine:
- Theme (dark vs light)
- Accent color (semantic, domain-derived — never personal preference)
- Typography personality (what domain-specific micro-details encode the product's identity)
- Density level (compact-but-usable default; adjusts for audience)

---

## The Primary Filter — Apply Before Every Decision

> **"Why is this here?"**

For every element you're about to add, ask: was this *decided*, or just *left in* from a template or framework default? If it was left in — remove it or replace it with something intentional.

This is the most important rule in this entire skill. A UI built with taste is defined more by what was *removed* than what was added.

---

## Layout & Structure

### Separating Content Areas
- **Default:** `1px` hairline rule, low opacity — `border-b border-white/8` (dark) or `border-b border-black/8` (light)
- **Text-heavy layouts:** pure whitespace is the separator
- **Ideal (rare):** restructure so separation isn't needed
- **Never:** elevated card surfaces, thick decorative borders, colored section dividers

### Cards — Strict Criteria
Cards only appear when one of these is true:
- **A (primary):** The entire unit is tappable/clickable as a single interaction — the card boundary signals "this is one action"
- **C (secondary):** The content genuinely needs visual isolation from its surroundings

Non-interactive cards used for grouping or decoration: **never**.

When cards ARE used:
- Clean border: `border border-white/10` (dark) or `border border-black/8` (light)
- Flat or very subtly raised background — no `shadow-xl`, no `shadow-lg`
- No hover gradient effects
- Border radius: subtle (see Border Radius rules below)

### The Left-Border Strip — NEVER
The `border-l-4 border-[color]` pattern is banned. It is a template shortcut, not a design decision.

### Lists of Similar Items
| Content type | Layout |
|---|---|
| Scan-first (transactions, results, medications) | Dense table or stacked rows with hairline separators |
| Understand-first (features, articles, project details) | Editorial rows with breathing room between items |
| Highly visual + tappable (portfolio projects, image gallery) | Card grid — only here |
| Default assumption | Rows over grid |

### Navigation
- **Default:** top navigation bar, text labels only
- **Sidebar:** only when 5+ top-level sections require persistent visibility
- **Never:** sidebar just because it looks like "a proper app"

### Grid & Asymmetry
- Default to the grid
- Asymmetry is only acceptable when the content structure organically creates it
- Never break grid alignment for visual interest or to appear "dynamic"

### Spacing & Density
- **Default:** compact-but-not-cramped
- Consumer-facing: slightly more room
- Power-user / data-heavy: tighter
- Never "luxury whitespace" — padding as a status signal without function

---

## Typography

### Stack Selection
Choose based on product domain — never default without questioning:

| Product type | Stack |
|---|---|
| Data-heavy (fintech, health, analytics) | Serif for headings + sans-serif for body + monospace for all numbers/data |
| Consumer / simple | Single humanist sans-serif, differentiated by weight |
| Developer tool | Can incorporate monospace elements as domain-appropriate micro-details |

Never default to Inter/Geist without asking: does this fit this product's identity?

### The Serif Role (when used)
1. **Primary:** Anti-template signal — communicates "this was made by a person with taste, not generated"
2. **Secondary:** Warmth and humanity — softens otherwise cold or clinical layouts
3. **Tertiary:** Authority and weight for primary headings

### Typographic Scale
- One significant jump per screen — reserved for the primary headline
- Do not cascade through 5 intermediate sizes (sm → base → lg → xl → 2xl → 3xl…)
- Size is the last resort for hierarchy; color/opacity does more work

### Text Hierarchy — Three Tiers Only
- **Tier 1 (primary):** Full opacity — `text-white` / `text-gray-900`
- **Tier 2 (secondary):** ~60% opacity — `text-white/60` / `text-gray-500`
- **Tier 3 (tertiary):** ~40% opacity — `text-white/40` / `text-gray-400`
- **Four tiers = signal to restructure the layout**, not add another shade

### Domain Encoding in Typography
Typography micro-details should encode the *product's* domain identity — not the designer's personality:
- A developer tool can use code comment syntax (`// SECTION`) as section labels
- A legal product uses formal, structured language patterns
- A game product can use genre-appropriate typographic conventions
- This is **never applied universally** — it is contextual and deliberate

---

## Color

### Core Rule
Every color in the palette means something specific. It is used only for that meaning. No decorative color. No color added for variety.

### Palette Structure
- One neutral base + one semantic accent per product
- Accent color is **derived from the product's domain**, not personal preference:
  - Fintech / growth: green
  - Health alerts / data emphasis: amber
  - Danger / error: red
  - AI-generated content: violet
- Multiple accents only when each carries a **distinct semantic meaning** (e.g. per-condition color coding in a health product)

### Theme Decision
- Personal gravitational pull is dark + warm amber — **actively compensate**
- If the product is consumer-facing or domain calls for light: use light
- Goal: not every product looks like a dark-themed dev tool

### Light Theme Backgrounds
- **Default:** warm off-white — `#fafaf8` or `oklch(98% 0.005 80)`
- **Ideal:** derive tint direction from the accent color
- **Never:** pure `#ffffff` — it's a framework default nobody consciously chose

### Dark Theme Backgrounds
- Deep near-black: `#080808` or `oklch(8% 0 0)`
- Avoid mid-dark `#1a1a1a` or `#111111` — they feel like "dark mode" rather than a focused instrument

---

## Motion & Animation

**Default posture: skeptical.** Start by removing motion, not adding it.

### When Animation Is Earned
- Maximum **2–3 moments per product** receive intentional animation
- Test: does this provide user value, or is it designer expression?
- "Designer show-off" test: if removing this animation makes the user's life *better*, remove it

### Duration
- Short. If it feels like a performance, it's too long.
- Functional transitions (content sliding in, panel expanding): 150–250ms
- Earned signature moments: up to 400–600ms, no more

### Contextual Animation Vocabulary
| Product type | Animation level |
|---|---|
| Enterprise / legal / medical | Near-zero — functional transitions only |
| Consumer fintech | Subtle, functional — no celebration theater |
| Health / fitness / consumer mobile | More latitude — still earned, not decorative |
| Game / creative | Most latitude — but still tied to user value |

### Never
- Full-screen animations
- Animations that delay access to content
- Glassmorphism / backdrop-blur transitions used decoratively
- Scroll-triggered animations on every section
- Confetti on transaction success or any "celebration" overlay
- Looping decorative animations in the background

---

## Components & Defaults

### Component Libraries (shadcn, Radix, MUI, etc.)
- **Use invisible primitives freely:** accessibility, keyboard navigation, focus management, ARIA — these are correct defaults
- **Restyle every visible component:** enough that the output does not look like default shadcn/Tailwind
- Before using any component default, ask: "does this look like it came from a template?"

### Border Radius
| Context | Value |
|---|---|
| Default (containers, inputs, buttons) | Subtle: 4–6px — `rounded` or `rounded-md` |
| Small elements (tags, badges, chips, pills) | Full pill: `rounded-full` |
| Technical / serious product (dev tool, analytics) | Near-sharp: 2–4px — `rounded-sm` |
| Never | Blanket `rounded-2xl` or `rounded-3xl` on containers |

Never mix aggressive rounding inconsistently across the UI.

### Icons
- **Universal icons** (home, search, close, back, menu): icon only, no label needed
- **Domain-specific icons**: add a text label when user familiarity with that domain cannot be assumed
- **Style coherence** (medium constraint): icon visual style should not clash with UI personality
- **Never:** icons as decoration on list items that don't need them

---

## Empty & Loading States

| State | Approach |
|---|---|
| Loading | Skeleton screens that mirror actual layout — maintains spatial confidence. Minimal spinner as fallback only. |
| Empty | Illustrated with a short, human-voice message. Treat as a personality moment and implicit onboarding opportunity. |

**Never:** "No data found." in gray text on a white/dark background with no visual treatment.

---

## Hero Visuals (Marketing / Landing Pages)

| Type | Weight | When |
|---|---|---|
| Product screenshots | ~40% | Literal grounding — show the actual product in context |
| Illustrations | ~30% | Metaphorical grounding — replaces the floating-screenshot formula |
| Text-only | ~20% | When copy is strong enough to stand alone; early-stage; portfolio; confident tool products |
| Photography | ~10% | Content-driven products only (news, editorial, media) |

**Underlying principle:** The hero grounds the user in the product's world — literally (screenshot), metaphorically (illustration), linguistically (text), or contextually (photography). The method changes; the intent doesn't.

**Never:**
- Blue/purple gradient background + floating product mockup screenshot
- "AI-powered" / "AI-native" badge or chip decoration in the hero
- 9-feature icon grid masquerading as a features section
- Scroll-jacked hero sections with motion theater

---

## Copy & Tone

Copy is part of the design. The writing should match the layout personality — an editorial layout with generic marketing copy is incoherent. Apply the same "why is this here?" filter to every word.

### Copy Personality Matches Layout Personality

| Layout type | Copy register | Example headline |
|---|---|---|
| Editorial / magazine | Journalistic, literary, longer — reads like a considered sentence | "The insurance policy you've been paying for, finally translated." |
| Dark / focused instrument | Confident, understated, no fluff — says the thing directly | "Your health policy, finally something you understand." |
| Data-forward / dashboard | Direct, product-focused, functional — states what the product does | "The health coverage dashboard your insurer never gave you." |
| Consumer / warm | Conversational, approachable, benefit-first | "Know what you're covered for before you need it." |

### Headlines

- Have a **specific point of view** — not a generic product description
- Use **earned specificity**: "47 pages of exclusions, sub-limits, and waiting periods" beats "complex documents"
- **One idea per headline** — don't try to communicate everything
- Avoid setup/payoff structures unless the payoff is genuinely sharp
- The headline should be able to stand alone — if it needs the subtext to make sense, rewrite the headline

### Subtext / Body Copy

- Should **add new information**, not restate the headline in different words
- Keep it **tight** — if a sentence can be cut without losing meaning, cut it
- Use **domain-specific language** where appropriate — it signals genuine understanding ("sub-limit", "waiting period", "RAG", "pharmacokinetic") but translate jargon when the audience wouldn't know it
- Line length: 60–75 characters for body text is the readable sweet spot — use `max-width` to enforce this

### CTA Copy

- **Specific beats generic**: "Get early access" > "Get started". "Join waitlist →" > "Sign up". "See what it does →" > "Learn more"
- The arrow `→` is functional — it signals direction/action. Use it on text-link CTAs, not on button CTAs
- Never: "Learn more", "Click here", "Explore", "Discover" as standalone CTAs — these are filler

### Microcopy (labels, badges, tags, captions)

- Monospace microcopy should be **terse** — it's data, not prose
- Labels are lowercase by default: `taken`, `due 9 PM`, `~16 days left`
- Eyebrow labels / section markers use ALL CAPS + wide tracking in monospace: `THE PROBLEM`, `STEP 01`, `CHAPTER I`
- Source citations / footnotes belong in tertiary text, not hidden — show the work

### Copy Anti-Patterns — Never Use These Words

These words signal vibe-coded, AI-generated marketing copy:

| Banned | Why |
|---|---|
| "AI-powered" / "AI-native" | Performative, not descriptive |
| "Seamless" | Means nothing |
| "Revolutionary" / "game-changing" | Nobody believes it |
| "Robust" / "comprehensive solution" | Enterprise filler |
| "Cutting-edge" / "next-generation" | Meaningless temporal claims |
| "Intuitive" / "easy to use" | Show it, don't claim it |
| "Leverage" (as a verb) | Jargon that lost its meaning |
| "Unlock" (as a metaphor) | Overused to the point of parody |
| "Empower" | Condescending marketing word |
| "Streamline" | Says nothing about what changes |

---

## Anti-Pattern Blacklist

These patterns are banned. If you find yourself about to use one, stop and redesign.

| Anti-pattern | Why it's banned |
|---|---|
| `border-l-4 border-[color]` on cards or alerts | Template thinking, not a design decision |
| Cards as default content containers | Fragments content without justification |
| `shadow-xl` / `shadow-lg` on everything | Lazy depth signal |
| `rounded-2xl` / `rounded-3xl` as blanket default | Framework default nobody consciously chose |
| Blue/purple gradient hero section | The formula — recognizable in 2 seconds |
| "AI-powered" badge/chip in marketing | Performative decoration |
| Glassmorphism (`backdrop-blur` used decoratively) | Decorative, not structural |
| Confetti on success / celebration overlays | Celebratory theater |
| Full-screen or long animations | Designer ego, user tax |
| Scroll-triggered animations on every section | Motion theater |
| Cluttered dashboard (8+ widgets competing equally) | Density without hierarchy |
| Asymmetry imposed for visual interest | Grid violation without content reason |
| Four+ text tiers | Restructure the layout instead |
| Redundant labels that explain the obvious | Condescending to the user |
| Generic testimonial / social proof sections | Credibility theater |
| Pure `#ffffff` background | Framework default — use warm off-white |
| Icons as decorative list item bullets | Decoration that doesn't earn its place |

---

## Reference Sites

When calibrating tone and aesthetic, these represent the design language:

| Site | What it demonstrates |
|---|---|
| linear.app | Dark, minimal, zero decoration, product-as-hero, no card soup |
| cursor.com | Warm off-white, left-aligned copy, austere, functional — light theme done right |
| groww.in | Clean light theme, semantic green accent, data-forward, top nav |
| amlan.io | Dark, monospace accents, text-only hero, cards only as tappable units |

---

## Output Checklist

Before delivering any UI code, verify every item:

- [ ] Every element answers "why is this here?"
- [ ] No `border-l-4` left-border strips anywhere
- [ ] Cards only appear as tappable units or genuine isolation needs
- [ ] Color has semantic meaning — no decorative accents added for variety
- [ ] Border radius: subtle (4–6px) on containers, pill only on small elements
- [ ] Typography: max 3 tiers, differentiated by opacity/color — not scale
- [ ] Animations are either absent or demonstrably earned (user value, not designer expression)
- [ ] Empty and loading states are designed, not defaulted
- [ ] No items from the Anti-Pattern Blacklist
- [ ] The output does not look like a default shadcn or Tailwind template
- [ ] Theme (dark/light) and accent color were derived from product context, not personal preference
- [ ] Copy register matches layout personality (editorial → literary, data-forward → direct, dark → understated)
- [ ] No banned copy words: "seamless", "AI-powered", "robust", "revolutionary", "intuitive", "unlock", "empower"
- [ ] CTAs are specific ("Get early access") not generic ("Learn more", "Get started")
- [ ] Subtext adds new information — does not restate the headline
