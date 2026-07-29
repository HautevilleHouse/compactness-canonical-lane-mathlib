import CompactnessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure SequentialCompactnessPackage where
  space : Type
  topology : TopologicalSpace space
  everySequenceHasConvergentSubsequence : Prop
  subsequentialLimitClosed : Prop
  bolzanoWeierstrassProperty : Prop

structure SequentialCompactnessEvidence (S : SequentialCompactnessPackage) where
  everySequenceHasConvergentSubsequenceClosed : S.everySequenceHasConvergentSubsequence
  subsequentialLimitClosedClosed : S.subsequentialLimitClosed
  bolzanoWeierstrassPropertyClosed : S.bolzanoWeierstrassProperty

def SequentialCompactnessClosed (S : SequentialCompactnessPackage) : Prop :=
  S.everySequenceHasConvergentSubsequence ∧ S.subsequentialLimitClosed ∧ S.bolzanoWeierstrassProperty

theorem sequential_compactness_closed_from_evidence
    (S : SequentialCompactnessPackage) (E : SequentialCompactnessEvidence S) :
    SequentialCompactnessClosed S :=
  And.intro E.everySequenceHasConvergentSubsequenceClosed
    (And.intro E.subsequentialLimitClosedClosed E.bolzanoWeierstrassPropertyClosed)

end CompactnessCanonicalLaneLean
end HautevilleHouse
