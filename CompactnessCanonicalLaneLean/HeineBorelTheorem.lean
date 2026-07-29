import CompactnessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure HeineBorelTheoremPackage where
  euclideanSpace : Type
  norm : euclideanSpace → ℝ
  closedAndBounded : Set euclideanSpace → Prop
  compactSet : Set euclideanSpace → Prop
  heineBorelEquivalence : Prop
  closedBoundedImpliesCompact : Prop
  compactImpliesClosedBounded : Prop

structure HeineBorelTheoremEvidence (H : HeineBorelTheoremPackage) where
  closedBoundedImpliesCompactClosed : H.closedBoundedImpliesCompact
  compactImpliesClosedBoundedClosed : H.compactImpliesClosedBounded
  heineBorelEquivalenceClosed : H.heineBorelEquivalence

def HeineBorelTheoremClosed (H : HeineBorelTheoremPackage) : Prop :=
  H.closedBoundedImpliesCompact ∧ H.compactImpliesClosedBounded ∧ H.heineBorelEquivalence

theorem heine_borel_theorem_closed_from_evidence
    (H : HeineBorelTheoremPackage) (E : HeineBorelTheoremEvidence H) :
    HeineBorelTheoremClosed H :=
  And.intro E.closedBoundedImpliesCompactClosed
    (And.intro E.compactImpliesClosedBoundedClosed E.heineBorelEquivalenceClosed)

end CompactnessCanonicalLaneLean
end HautevilleHouse
