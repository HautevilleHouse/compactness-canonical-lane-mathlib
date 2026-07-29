import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure OpenCoverPackage where
  space : Type u
  topology : TopologicalSpace space
  indexSet : Type v
  covering : indexSet → Set space
  isOpen : ∀ i, IsOpen (covering i)
  coversSpace : ⋃ i, covering i = Set.univ

structure OpenCoverEvidence (C : OpenCoverPackage) where
  isOpenClosed : C.isOpen = fun i => by
    exact C.isOpen i
  coversSpaceClosed : C.coversSpace

def OpenCoverClosed (C : OpenCoverPackage) : Prop :=
  (∀ i, IsOpen (C.covering i)) ∧ (⋃ i, C.covering i = Set.univ)

theorem open_cover_closed_from_evidence (C : OpenCoverPackage) (E : OpenCoverEvidence C) :
    OpenCoverClosed C := by
  exact And.intro (fun i => E.isOpenClosed i) E.coversSpaceClosed

end CompactnessCanonicalLaneLean
end HautevilleHouse