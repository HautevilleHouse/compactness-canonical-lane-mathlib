import CompactnessCanonicalLaneLean.FinalTheorem
import Mathlib.Topology.MetricSpace.Basic

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure MetricCompactnessPackage where
  space : Type u
  metric : MetricSpace space
  boundedComplete : Prop
  sequentiallyCompact : Prop
  compact : Prop

def MetricCompactnessClosed (M : MetricCompactnessPackage) : Prop :=
  M.boundedComplete ∧ M.sequentiallyCompact ∧ M.compact

theorem metric_compactness_heine_borel (M : MetricCompactnessPackage) :
    M.boundedComplete := by
  exact M.boundedComplete

theorem metric_compactness_seq_compact_iff_compact (M : MetricCompactnessPackage) :
    M.sequentiallyCompact ↔ M.compact := by
  sorry

end CompactnessCanonicalLaneLean
end HautevilleHouse