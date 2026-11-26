# Exact determination of the book Ramsey number R(B₅,B₉) = 29

This repository presents a Lean 4 formal proof that **R(B₅,B₉) = 29**. A book Bₖ consists of k triangles sharing a common edge; containment is not required to be induced. Every red-blue coloring of K₂₉ contains a red B₅ or a blue B₉, while an explicit coloring of K₂₈ avoids both.

## Formal statement

```lean
theorem book_ramsey_5_9_eq_29 : IsLeast {n : ℕ | RamseyProperty n} 29
```

The definition `Book59Exact.RamseyProperty` quantifies over all symmetric, loopless, binary integer adjacency matrices. The red and blue book conditions count common neighbors of edges in the respective colors.

## Proof outline

The lower bound uses an explicit 28-vertex graph constructed from two layers of ℤ/14ℤ. The upper bound uses triangle and deficit identities, matrix commutation, exhaustive degree classification and six case eliminations. Monotonicity establishes the least-value statement.

## Verification and reproduction

1. Download [Book59_FinalVerification_Fixed.lean](Book59_FinalVerification_Fixed.lean).
2. Open [Lean Web](https://live.lean-lang.org/) with Mathlib and load the complete file.
3. Inspect all messages and the final `#print axioms book_ramsey_5_9_eq_29` output.

The recorded browser session used Lean v4.37.0-rc1 with Latest Mathlib and reported zero errors and the following dependencies:

```text
[propext, Classical.choice, Quot.sound]
```

No `sorryAx` was reported for the final theorem. The exact Mathlib commit was not recorded; an independent replay is invited.

- [Compilation screenshot](verification_zero_errors.png)
- [Final axiom inspection](verification_axioms.png)

SHA-256 of Lean source: `7fb2fa5e68b1fa213c026c4675a78b7331b7b04dca7c0cc4e68ff0c46d73f871`

## Prior work and status

The lower bound of 29 was previously reported by [Quantavane](https://quantavane.com/results/). The proposed contribution is the matching upper bound. See also Radziszowski's [Small Ramsey Numbers](https://www.combinatorics.org/ojs/index.php/eljc/article/view/DS1). Independent confirmation of priority and external record recognition are pending.

## Methodology and acknowledgments

The research was directed by the author using AI-assisted mathematical reasoning, computational enumeration, and Lean 4 formalization. The author conducted the end-to-end formal verification using Lean 4 and Mathlib, confirming the theorem's standard axiom dependencies.
