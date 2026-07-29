import CompactnessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessCanonicalLaneLean

structure FiniteIntersectionPropertyPackage where
  carrier : Type
  topology : TopologicalSpace carrier
  family : Set (Set carrier)
  finiteIntersectionClosure : Prop
  intersectionNonempty : Prop
  coveringCondition : Prop

structure FiniteIntersectionPropertyEvidence (F : FiniteIntersectionPropertyPackage) where
  finiteIntersectionClosureClosed : F.finiteIntersectionClosure
  intersectionNonemptyClosed : F.intersectionNonempty
  coveringConditionClosed : F.coveringCondition

def FiniteIntersectionPropertyClosed (F : FiniteIntersectionPropertyPackage) : Prop :=
  F.finiteIntersectionClosure ∧ F.intersectionNonempty ∧ F.coveringCondition

theorem finite_intersection_property_closed_from_evidence
    (F : FiniteIntersectionPropertyPackage)
    (E : FiniteIntersectionPropertyEvidence F) :
    FiniteIntersectionPropertyClosed F :=
  And.intro E.finiteIntersectionClosureClosed
    (And.intro E.intersectionNonemptyClosed E.coveringConditionClosed)

end CompactnessCanonicalLaneLean
end HautevilleHouse
