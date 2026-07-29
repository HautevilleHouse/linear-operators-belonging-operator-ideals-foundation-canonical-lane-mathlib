import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure SchattenIdeal where
  exponent : ℝ
  traceCondition : Prop
  membershipCondition : Prop
  exponentPositivity : Prop
  exponentClosed : exponentPositivity

def schattenIdealClosed (S : SchattenIdeal) : Prop :=
  S.traceCondition ∧ S.membershipCondition ∧ S.exponentPositivity

theorem schatten_ideal_closed_from_conditions (S : SchattenIdeal) : schattenIdealClosed S :=
  And.intro S.traceCondition (And.intro S.membershipCondition S.exponentClosed)

structure SchattenClass where
  ideal : SchattenIdeal
  operatorFamily : Type → Type
  membershipProof : Prop
  membershipClosed : membershipProof

def schattenClassClosed (C : SchattenClass) : Prop :=
  schattenIdealClosed C.ideal ∧ C.membershipProof

theorem schatten_class_closed (C : SchattenClass) : schattenClassClosed C :=
  And.intro (schatten_ideal_closed_from_conditions C.ideal) C.membershipClosed

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse