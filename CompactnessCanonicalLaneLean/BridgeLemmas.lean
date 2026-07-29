import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompactWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CompactnessCanonicalLaneLean
end HautevilleHouse
