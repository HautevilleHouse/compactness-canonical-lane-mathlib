import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure MetricSpaceX (X : Type u) where
  dist : X → X → ℝ
  dist_nonneg : ∀ x y, dist x y ≥ 0
  dist_self : ∀ x, dist x x = 0
  dist_symm : ∀ x y, dist x y = dist y x
  dist_triangle : ∀ x y z, dist x z ≤ dist x y + dist y z
  dist_eq_iff : ∀ x y, dist x y = 0 ↔ x = y

structure BoundedSequence (X : Type u) [MetricSpaceX X] where
  sequence : ℕ → X
  bounded : ∃ C, ∀ n, MetricSpaceX.dist (sequence 0) (sequence n) ≤ C

structure ConvergentSubsequence (X : Type u) [MetricSpaceX X] (s : BoundedSequence X) where
  subsequence : ℕ → ℕ
  strictlyIncreasing : ∀ n, subsequence n < subsequence (n+1)
  limit : X
  convergence : ∀ ε > 0, ∃ N, ∀ n ≥ N, MetricSpaceX.dist (s.sequence (subsequence n)) limit < ε

end CompactnessCanonicalLaneLean
end HautevilleHouse