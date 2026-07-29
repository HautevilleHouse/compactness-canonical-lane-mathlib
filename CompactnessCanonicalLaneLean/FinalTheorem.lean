import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CompactnessCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

def ConstrainedCompactnessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_compactness_endgame (A : AdmissibleClass) :
    ConstrainedCompactnessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactnessCanonicalLaneLean
end HautevilleHouse