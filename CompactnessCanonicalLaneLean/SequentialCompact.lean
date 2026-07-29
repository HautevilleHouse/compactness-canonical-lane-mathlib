import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessCanonicalLaneLean.BolzanoWeierstrass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure SequentiallyCompactMetric (X : Type u) [MetricSpaceX X] where
  isSequentiallyCompact : Prop
  bolzanoWeierstrassProperty : ∀ (s : BoundedSequence X), ∃ (cs : ConvergentSubsequence X s), True

def metricCompactAdmissible (X : Type u) [MetricSpaceX X] : AdmissibleClass :=
  { object := SequentiallyCompactMetric X
    endpointSatisfied := isSequentiallyCompact
    remainderRecorded := False
    gateWitness := Or.inl isSequentiallyCompact
  }

end CompactnessCanonicalLaneLean
end HautevilleHouse