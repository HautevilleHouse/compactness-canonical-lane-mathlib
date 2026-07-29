import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure OpenCover (X : Type u) [TopologicalSpace X] where
  sets : Set (Set X)
  isOpen : ∀ s ∈ sets, IsOpen s
  covers : ⋃₀ sets = Set.univ

def CoverCompactness (X : Type u) [TopologicalSpace X] : Prop :=
  ∀ (cover : OpenCover X), ∃ finiteSubcover : Finset (Set X), finiteSubcover ⊆ cover.sets ∧ ⋃₀ (finiteSubcover : Set (Set X)) = Set.univ

end CompactnessCanonicalLaneLean
end HautevilleHouse