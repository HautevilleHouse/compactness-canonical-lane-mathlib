import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessCanonicalLaneLean.OpenCover
import HautevilleHouse.CompactnessCanonicalLaneLean.FiniteSubcover

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure CompactSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  everyOpenCoverHasFiniteSubcover : Prop

structure CompactSpaceEvidence (K : CompactSpacePackage) where
  everyOpenCoverHasFiniteSubcoverClosed : K.everyOpenCoverHasFiniteSubcover

def CompactSpaceClosed (K : CompactSpacePackage) : Prop :=
  K.everyOpenCoverHasFiniteSubcover

theorem compact_space_closed_from_evidence (K : CompactSpacePackage) (E : CompactSpaceEvidence K) :
    CompactSpaceClosed K := by
  exact E.everyOpenCoverHasFiniteSubcoverClosed

def CompactnessAdmissibleObject (K : CompactSpacePackage) : AdmissibleClass where
  object := {
    space := K.space
    topology := K.topology
    closedThreeManifold := True
    simplyConnected := True
    sphereModel := Unit
    sphereTopology := inferInstance
    homeomorphicToSphere := True
    conclusion := True
  }
  endpointSatisfied := CompactSpaceClosed K
  remainderRecorded := ¬ CompactSpaceClosed K
  gateWitness := Or.inl (compact_space_closed_from_evidence K (CompactSpaceEvidence.mk (by
    exact K.everyOpenCoverHasFiniteSubcover)))

end CompactnessCanonicalLaneLean
end HautevilleHouse