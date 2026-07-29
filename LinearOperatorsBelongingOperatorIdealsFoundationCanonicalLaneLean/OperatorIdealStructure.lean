import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean.OperatorSpaceFoundation

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure OperatorIdeal (V W : OperatorSpace) where
  idealType : Set (V.carrier → W.carrier)
  closedUnderAddition : Prop
  closedUnderScalarMultiplication : Prop
  containsCompactOperators : Prop
  traceClassCondition : Prop

structure OperatorIdealEvidence {V W : OperatorSpace} (I : OperatorIdeal V W) where
  closedUnderAdditionClosed : I.closedUnderAddition
  closedUnderScalarMultiplicationClosed : I.closedUnderScalarMultiplication
  containsCompactOperatorsClosed : I.containsCompactOperators
  traceClassConditionClosed : I.traceClassCondition

def OperatorIdealClosed {V W : OperatorSpace} (I : OperatorIdeal V W) : Prop :=
  I.closedUnderAddition ∧ I.closedUnderScalarMultiplication ∧
  I.containsCompactOperators ∧ I.traceClassCondition

theorem operator_ideal_closed_from_evidence {V W : OperatorSpace} (I : OperatorIdeal V W)
    (E : OperatorIdealEvidence I) : OperatorIdealClosed I := by
  exact And.intro E.closedUnderAdditionClosed
    (And.intro E.closedUnderScalarMultiplicationClosed
      (And.intro E.containsCompactOperatorsClosed E.traceClassConditionClosed))

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse