module

public import Mathlib

@[expose] public section

/-!
# Exact book Ramsey number R(B₅,B₉) = 29
A book B_k consists of k distinct triangles sharing an edge. A symmetric
zero-diagonal binary integer matrix represents red edges; its off-diagonal
complement represents blue edges. The product sum counts common neighbors.
The least order with an unavoidable red B₅ or blue B₉ is 29.
-/
namespace Book59Exact
open scoped BigOperators

def commonN {n : ℕ} (A : Fin n → Fin n → ℤ) (i j : Fin n) : ℤ :=
  ∑ k, A i k * A k j

def blueN {n : ℕ} (A : Fin n → Fin n → ℤ) (i j : Fin n) : ℤ :=
  if i = j then 0 else 1 - A i j

def RamseyProperty (n : ℕ) : Prop :=
  ∀ A : Fin n → Fin n → ℤ,
    (∀ i j, A i j = A j i) →
    (∀ i, A i i = 0) →
    (∀ i j, A i j = 0 ∨ A i j = 1) →
    (∃ i j, A i j = 1 ∧ 5 ≤ commonN A i j) ∨
    (∃ i j, i ≠ j ∧ A i j = 0 ∧ 9 ≤ commonN (blueN A) i j)

end Book59Exact

namespace Book59Submission

/-- The least order forcing a red five-page book or a blue nine-page book is 29. -/
theorem exact_value : IsLeast {n : ℕ | Book59Exact.RamseyProperty n} 29 := by
  sorry

end Book59Submission
