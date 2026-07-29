import CompactnessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure CoveringCompactnessPackage where
  space : Type
  topology : TopologicalSpace space
  openCover : Set (Set space)
  finiteSubcover : Prop
  subcoverExists : Prop
  limitPointCompactness : Prop

structure CoveringCompactnessEvidence (C : CoveringCompactnessPackage) where
  finiteSubcoverClosed : C.finiteSubcover
  subcoverExistsClosed : C.subcoverExists
  limitPointCompactnessClosed : C.limitPointCompactness

def CoveringCompactnessClosed (C : CoveringCompactnessPackage) : Prop :=
  C.finiteSubcover ∧ C.subcoverExists ∧ C.limitPointCompactness

theorem covering_compactness_closed_from_evidence
    (C : CoveringCompactnessPackage) (E : CoveringCompactnessEvidence C) :
    CoveringCompactnessClosed C :=
  And.intro E.finiteSubcoverClosed
    (And.intro E.subcoverExistsClosed E.limitPointCompactnessClosed)

end CompactnessCanonicalLaneLean
end HautevilleHouse
