import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessCanonicalLaneLean.OpenCover

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure CompactSpace (X : Type u) [TopologicalSpace X] where
  isCompact : Prop
  openCoverCondition : ∀ (U : OpenCover X), ∃ (finsub : FiniteSubcover X U), True

def compactAdmissibleClass (X : Type u) [TopologicalSpace X] : AdmissibleClass where
  object := CompactSpace X
  endpointSatisfied := isCompact
  remainderRecorded := False
  gateWitness := Or.inl isCompact

end CompactnessCanonicalLaneLean
end HautevilleHouse