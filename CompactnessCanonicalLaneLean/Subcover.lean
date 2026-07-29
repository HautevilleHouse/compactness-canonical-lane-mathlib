import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessCanonicalLaneLean.OpenCover

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure FiniteSubcover (X : Type u) [TopologicalSpace X] (U : OpenCover X) where
  selection : Finset (U.indexSet)
  finiteCover : ⋃ i ∈ selection, U.sets i = Set.univ

structure AdmissibleSubcoverClass (X : Type u) [TopologicalSpace X] where
  cover : OpenCover X
  subcover : FiniteSubcover X cover
  bridgeClosed : Prop
  gateClosed : Prop

end CompactnessCanonicalLaneLean
end HautevilleHouse