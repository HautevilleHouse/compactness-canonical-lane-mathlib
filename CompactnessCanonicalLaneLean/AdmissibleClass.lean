import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure AdmissibleClass where
  object : CompactAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompactWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactnessCanonicalLaneLean
end HautevilleHouse
