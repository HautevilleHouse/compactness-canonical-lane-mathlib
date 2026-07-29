import CompactnessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure TychonoffTheoremPackage where
  indexSet : Type
  factorSpaces : indexSet → Type
  factorTopologies : (i : indexSet) → TopologicalSpace (factorSpaces i)
  productSpace : Type
  productTopology : TopologicalSpace productSpace
  eachFactorCompact : Prop
  productCompact : Prop

structure TychonoffTheoremEvidence (T : TychonoffTheoremPackage) where
  eachFactorCompactClosed : T.eachFactorCompact
  productCompactClosed : T.productCompact

def TychonoffTheoremClosed (T : TychonoffTheoremPackage) : Prop :=
  T.eachFactorCompact ∧ T.productCompact

theorem tychonoff_theorem_closed_from_evidence
    (T : TychonoffTheoremPackage) (E : TychonoffTheoremEvidence T) :
    TychonoffTheoremClosed T :=
  And.intro E.eachFactorCompactClosed E.productCompactClosed

end CompactnessCanonicalLaneLean
end HautevilleHouse
