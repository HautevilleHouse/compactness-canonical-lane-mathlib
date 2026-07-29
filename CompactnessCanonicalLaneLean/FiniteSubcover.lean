import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessCanonicalLaneLean.OpenCover

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure FiniteSubcoverPackage (C : OpenCoverPackage) where
  subcoverIndex : Finset (C.indexSet)
  subcoverCovers : ⋃ i ∈ subcoverIndex, C.covering i = Set.univ
  finite : True

structure FiniteSubcoverEvidence {C : OpenCoverPackage} (F : FiniteSubcoverPackage C) where
  subcoverCoversClosed : F.subcoverCovers

def FiniteSubcoverClosed {C : OpenCoverPackage} (F : FiniteSubcoverPackage C) : Prop :=
  F.subcoverCovers

theorem finite_subcover_closed_from_evidence {C : OpenCoverPackage}
    (F : FiniteSubcoverPackage C) (E : FiniteSubcoverEvidence F) :
    FiniteSubcoverClosed F := by
  exact E.subcoverCoversClosed

end CompactnessCanonicalLaneLean
end HautevilleHouse