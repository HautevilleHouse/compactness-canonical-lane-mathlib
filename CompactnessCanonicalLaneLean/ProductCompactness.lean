import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure ProductCompactnessPackage where
  tychonoff : Prop
  finiteProduct : Prop
  arbitraryProduct : Prop

structure ProductCompactnessEvidence (P : ProductCompactnessPackage) where
  tychonoffClosed : P.tychonoff
  finiteProductClosed : P.finiteProduct
  arbitraryProductClosed : P.arbitraryProduct

def ProductCompactnessClosed (P : ProductCompactnessPackage) : Prop :=
  P.tychonoff ∧ P.finiteProduct ∧ P.arbitraryProduct

theorem product_compactness_closed_from_evidence (P : ProductCompactnessPackage)
    (E : ProductCompactnessEvidence P) : ProductCompactnessClosed P := by
  exact And.intro E.tychonoffClosed
    (And.intro E.finiteProductClosed E.arbitraryProductClosed)

end CompactnessCanonicalLaneLean
end HautevilleHouse