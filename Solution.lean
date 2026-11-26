module

public import Book59_FinalVerification_Fixed

public section

namespace Book59Submission

/-- The least order forcing a red five-page book or a blue nine-page book is 29. -/
theorem exact_value : IsLeast {n : ℕ | Book59Exact.RamseyProperty n} 29 := by
  exact Book59Exact.book_ramsey_5_9_eq_29

#print axioms exact_value

end Book59Submission
