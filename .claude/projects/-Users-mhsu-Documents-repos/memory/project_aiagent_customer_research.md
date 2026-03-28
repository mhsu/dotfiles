---
name: aiagent customer discovery — TC interviews (Kayla & Dominika)
description: Key insights from two TC customer discovery calls that should inform product decisions, prioritization, and positioning
type: project
---

Two calls conducted: Kayla (Maven TC, Bay Area, solo, now quit from burnout) and Dominika (Excellent TC, 3-person team, Bay Area, CA-only, ~37 active files/month).

## Strongest validation
Both independently described the core product without being prompted:
- Kayla: "Wished she could upload a purchase agreement and extract everything for her."
- Dominika: "Wants AI to review files, give me seller names, buyer names, COE, timing — help populate her intro email."

## Top pain points (in order)
1. **Manual data entry from contracts** — typing names, dates, and numbers from PDFs into their TM system. Both #1 pain. This is what we built.
2. **Tool fragmentation** — Kayla runs Glide → DocuSign → Open2Close → SkySlope → disclosures.io. Manually transfers data between tools. No single tool does enough.
3. **File compliance review** — reviewing docs for accuracy and missing signatures, making notes, following up, reviewing again. Dominika wants AI to give a summary of what's missing.
4. **PDF file management** — renaming and splitting PDFs. Dominika mentioned this specifically as a dream feature. Simple but tedious.

## Critical product requirements from calls
- **Privacy is non-negotiable**: Dominika explicitly said "needs to be protected AI that doesn't go on the internet with contracts." Contracts contain SSNs, financial data. This is the #1 reason TCs won't use generic ChatGPT. Security posture = core selling point.
- **TCs will always review AI output** — they don't want to hand over the wheel. Confidence flags on extracted fields (already built) are exactly right.
- **They'll still need to review everything** — the value is a faster, pre-populated starting point, not full automation.

## Tool stack TCs use today
- Glide (free) — pulls contracts, connects to DocuSign
- DocuSign (~$240/month) — e-signatures
- Open2Close ($59/month) — transaction management, timelines, calendar integration
- SkySlope — compliance checklist
- disclosures.io (free) — disclosure packages
- Google Workspace — email and shared drive

## Pricing signals
- Kayla: would pay ~$100/month "if it actually worked"
- Dominika: said "needs to be free to get her onboard" (high bar — her husband is a software engineer)
- Per-transaction pricing may be more palatable since TC income is lumpy based on closings

## Distribution
- Kayla offered to share TC Facebook groups: facebook.com/groups/transactioncoordinatorsforrealestate
- TCs feel undervalued ($500/transaction vs. agent's $20k in CA) — lean into this in positioning

## Features to add to roadmap
- **Document compliance check** — "AI reviews file, tells me what's missing" (Phase 2 priority, both asked for this)
- **PDF rename/split utility** — Dominika specifically mentioned. Simple, daily-use feature.
- **Email draft from extracted data** — pre-populate intro email with buyer name, seller name, COE date. High value, early win.

**Why:** These came directly from unprompted TC feedback in discovery calls and should be validated against future interviews before building.
**How to apply:** When deciding what to build next after the review screen, these features have direct customer validation behind them. The compliance check and email draft are the most-requested Phase 2 features.
