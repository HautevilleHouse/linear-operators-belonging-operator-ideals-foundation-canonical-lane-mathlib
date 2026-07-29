import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure IdealType where
  name : String
  carrierCondition : Prop
  idealProperty : Prop

def idealClosed (I : IdealType) : Prop :=
  I.carrierCondition ∧ I.idealProperty

structure OperatorIdeal where
  underlyingSet : Type
  addition : underlyingSet → underlyingSet → underlyingSet
  scalarMultiplication : ℝ → underlyingSet → underlyingSet
  norm : underlyingSet → ℝ
  idealMembership : Prop
  membershipClosed : idealMembership

def operatorIdealClosed (J : OperatorIdeal) : Prop :=
  J.idealMembership

theorem operator_ideal_closed_from_membership (J : OperatorIdeal) : operatorIdealClosed J :=
  J.membershipClosed

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse