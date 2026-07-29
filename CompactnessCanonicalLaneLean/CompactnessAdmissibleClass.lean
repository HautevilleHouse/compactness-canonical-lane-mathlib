import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure CompactAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  compact : Prop
  hausdorff : Prop
  conclusion : compact ∧ hausdorff

structure AdmissibleClass where
  object : CompactAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactnessCanonicalLaneLean
end HautevilleHouse