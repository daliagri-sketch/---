# RT-11_TODAY_LABEL_PRESENTATION_CORRECTION_PROPOSAL_v0_1

**Status:** PROPOSAL. Presentation only. **NOT IMPLEMENTED. No Code task.** Returned to Main CT.
**Product intent (Main CT, CLOSED):** "היום" is a **status label**, not navigation.
**Classification:** PRESENTATION FIDELITY ISSUE (RT-11).

---

## 1. The problem

| | |
|---|---|
| Runtime (`4499671`) | "היום" in the header of every screen: 16 px, underlined (`text-underline-offset: 5px`). It looks like a link. It is a static `<span>`: not focusable, with no role and no action |
| Source of the cue | 06's own `Code_Handoff_Morning_v1_0_FINAL` §2.5: "a **text link**, 16 px, underlined…". §4 P2-1 reinforced it: "'היום' is a pill instead of an underlined link" |
| Effect | The parent sees a link that does nothing. A tap gets no response |

**The fault is in the presentation source (06), not in the code.** The code follows §2.5 exactly.

## 2. Proposed amendment to Code_Handoff_Morning §2.5

**Current text (§2.5):**
> "היום": a text link, 16 px, underlined, `text-underline-offset: 5px` … It is not a pill.

**Proposed text:**
> "היום": a **status label**, not a link and not a button. Plain text, 16 px, weight 400, the same colour as today. **No underline**, no pill, no border, no background. It has no hover, focus, pointer cursor or link role, because it is not interactive. The element stays a static `<span>`.

**§4 P2-1, proposed amendment:**
> Withdrawn as worded. Replace with: "'היום' must not look interactive (no underline, no pill)."

## 3. What changes and what stays the same

| Property | Today | Proposed |
|---|---|---|
| Text "היום" | Unchanged | Unchanged (**no copy change**) |
| Position in the header | Unchanged | Unchanged |
| Size / weight / colour | 16 px / 400 / `--ink` (15 px under 360 px) | Unchanged |
| Underline | Yes (`underline`, offset 5px, thickness 1px) | **None** |
| Pill / border / background | None | None |
| Semantics | static `<span>` | Unchanged. No `role="link"`, no `tabindex` |
| Navigation | None | None. Reopened only by an explicit Product decision |

**This is the only change: removing the underline.** Contrast, size and layout stay as they are, so none of the measured audit values change.

## 4. For Code, after approval only (not a task now)

- One rule: `app/prototype.css` L163, `.product-header .today-anchor`. Remove `text-decoration:underline; text-underline-offset:5px; text-decoration-thickness:1px` and set `text-decoration:none`.
- No change to `AppShell.tsx`, the text or the tests. `master-journey.test.tsx` checks only that the element exists and fits the gutter.
- **Acceptance check:** on 390 and 320, "היום" is shown with no underline. It is still not reachable by Tab. The 390 / 320 header screenshots differ from the visual reference only in the underline.

## 5. Out of scope

- Whether "היום" is needed at all, or what it shows: Product.
- Home "היום…" status lines (H1–H4): unaffected.
- Any navigation: not invented.

## 6. Approval needed

| Item | Owner |
|---|---|
| Amendment to §2.5 and §4 P2-1 | Main CT (06 presentation source) |
| Code task | Main CT, after approval |
