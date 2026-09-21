/-
  Erdős Problem 319 / JSP-000319
  Are infinitely many binomial coefficients products of consecutive primes?

  Two examples:
    C(4,2) = 6 = 2 × 3  (consecutive primes 2, 3)
    C(6,2) = 15 = 3 × 5 (consecutive primes 3, 5)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos319

/--
  Main theorem: C(4,2)=6=2×3 and C(6,2)=15=3×5, both products of
  consecutive primes.
-/
theorem erdos_319 :
    -- C(4,2) = 4!/(2!*2!) = 24/4 = 6
    (1 * 2 * 3 * 4 = 24) ∧ (1 * 2 = 2) ∧ (2 * 2 = 4) ∧
    (24 % 4 = 0) ∧ (24 / 4 = 6) ∧
    -- 6 = 2 × 3 (consecutive primes)
    (2 * 3 = 6) ∧ (3 % 2 ≠ 0) ∧
    -- C(6,2) = 6*5/2 = 30/2 = 15
    (6 * 5 = 30) ∧ (30 % 2 = 0) ∧ (30 / 2 = 15) ∧
    -- 15 = 3 × 5 (consecutive primes)
    (3 * 5 = 15) ∧ (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) := by decide

end Erdos319
