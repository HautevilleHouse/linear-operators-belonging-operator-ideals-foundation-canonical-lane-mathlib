import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure OperatorIdealClass where
  carrier : Type u
  idealNorm : Type v
  idealMembership : Prop
  idealClosedUnderComposition : Prop
  idealContainment : Prop
  normComplete : Prop

structure OperatorIdealEvidence (I : OperatorIdealClass) where
  idealMembershipClosed : I.idealMembership
  idealClosedUnderCompositionClosed : I.idealClosedUnderComposition
  idealContainmentClosed : I.idealContainment
  normCompleteClosed : I.normComplete

def OperatorIdealClosed (I : OperatorIdealClass) : Prop :=
  I.idealMembership ∧ I.idealClosedUnderComposition ∧
  I.idealContainment ∧ I.normComplete

theorem operator_ideal_closed_from_evidence (I : OperatorIdealClass)
    (E : OperatorIdealEvidence I) : OperatorIdealClosed I := by
  exact And.intro E.idealMembershipClosed
    (And.intro E.idealClosedUnderCompositionClosed
      (And.intro E.idealContainmentClosed E.normCompleteClosed))

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse
