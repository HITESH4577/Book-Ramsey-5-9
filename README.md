# Exact determination of the book Ramsey number R(B₅,B₉) = 29

**Author:** Hitesh Singh Anottra (HITESH4577)

**DOI:** [10.5281/zenodo.24559340](https://doi.org/10.5281/zenodo.24559340)

This repository presents a Lean 4 formal proof that **R(B₅,B₉) = 29**. A book Bₖ consists of k triangles sharing a common edge; containment is not required to be induced. Every red-blue coloring of K₂₉ contains a red B₅ or a blue B₉, while an explicit coloring of K₂₈ avoids both.

The result has been independently mechanically verified through the Palomar Registry and independently verified and incorporated into Leaps in Bounds.

## Formal statement

```lean
theorem book_ramsey_5_9_eq_29 : IsLeast {n : ℕ | RamseyProperty n} 29
```

The definition `Book59Exact.RamseyProperty` quantifies over all symmetric, loopless, binary integer adjacency matrices. The red and blue book conditions count common neighbors of edges in the respective colors.

## Proof outline

The lower bound uses an explicit 28-vertex graph constructed from two layers of ℤ/14ℤ. The upper bound uses triangle and deficit identities, matrix commutation, exhaustive degree classification and six case eliminations. Monotonicity establishes the least-value statement.

## Independent verification and external recognition

### Palomar Registry

The complete formalization successfully passed Palomar's mechanical verification and automated editorial review, with no problems identified.

- **Registry ID:** PALOMAR-2026-11-26-000049
- **Registration date:** November 26, 2026
- **Version:** 1
- [Public registry entry](https://palomar-registry.org/entry.html?id=PALOMAR-2026-11-26-000049&version=1)

### Leaps in Bounds

Daniel Munro independently compiled `Book59_FinalVerification_Fixed.lean` against Lean v4.35.0 and Mathlib, confirming successful compilation with no errors and dependence on only the standard axioms `propext`, `Classical.choice`, and `Quot.sound`.

The explicit 28-vertex coloring also passed the independent witness checker.

The exact value R(B₅,B₉) = 29 was incorporated into Leaps in Bounds through merged PR #126, with the matching upper bound attributed to HITESH4577 and the previously reported lower bound attributed to Quantavane.

- [Merged PR #126 — Addition of book Ramsey numbers](https://github.com/daniel-munro/leaps-in-bounds/pull/126)
- [PR #129 — Formal certificates for both bounds](https://github.com/daniel-munro/leaps-in-bounds/pull/129)

## Verification and reproduction

1. Download [Book59_FinalVerification_Fixed.lean](Book59_FinalVerification_Fixed.lean).
2. Open [Lean Web](https://live.lean-lang.org/) with Mathlib and load the complete file.
3. Inspect all messages and the final `#print axioms book_ramsey_5_9_eq_29` output.

The original recorded browser session used Lean v4.37.0-rc1 with Latest Mathlib and reported zero errors and the following dependencies:

```text
[propext, Classical.choice, Quot.sound]
```

No `sorryAx` was reported for the final theorem. The exact Mathlib commit of the original browser session was not recorded. Subsequent independent verification was completed through Palomar and Leaps in Bounds.

- [Compilation screenshot](verification_zero_errors.png)
- [Final axiom inspection](verification_axioms.png)

SHA-256 of Lean source: `7fb2fa5e68b1fa213c026c4675a78b7331b7b04dca7c0cc4e68ff0c46d73f871`

## Prior work, originality and attribution

The lower bound of 29 was previously reported by [Quantavane](https://quantavane.com/results/) on November 10, 2026. The matching upper bound established in this project determines the exact Ramsey number.

Revision 18 of Radziszowski's [Small Ramsey Numbers](https://www.combinatorics.org/ojs/index.php/eljc/article/view/DS1), published in April 2026, records the earlier bounds 28 ≤ R(B₅,B₉) ≤ 30.

Following independent verification and an investigation of prior results, Daniel Munro reported:

> As far as I can tell, your proof that R(B₅,B₉) ≤ 29 is new.

He also identified the explicit 28-vertex construction as a candidate for the first publicly available certificate of the lower bound of 29.

The result is now externally recorded in Leaps in Bounds with separate attribution for both bounds. Further academic review and survey inclusion remain pending.

## Research archive

The formal proof is permanently archived on Zenodo.

- **Author:** Hitesh Singh Anottra
- **DOI:** [10.5281/zenodo.24559340](https://doi.org/10.5281/zenodo.24559340)
- **Palomar registry:** [PALOMAR-2026-11-26-000049](https://palomar-registry.org/entry.html?id=PALOMAR-2026-11-26-000049&version=1)

## Methodology and acknowledgments

The research was directed by the author using AI-assisted mathematical reasoning, computational enumeration, and Lean 4 formalization. The author conducted the end-to-end formal verification using Lean 4 and Mathlib, confirming the theorem's standard axiom dependencies.
