import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure BoundedLinearOperator (X Y : BanachSpace) where
  map : X.carrier → Y.carrier
  linear : LinearMap X.carrier Y.carrier
  bounded : ∃ C : ℝ, ∀ x : X.carrier, ‖map x‖ ≤ C * ‖x‖

structure OperatorIdeal where
  ideal : ∀ (X Y : BanachSpace), Set (BoundedLinearOperator X Y)
  closedUnderAddition : ∀ (X Y : BanachSpace) (T U : BoundedLinearOperator X Y),
    T ∈ ideal X Y → U ∈ ideal X Y → ?_ + ?_ ∈ ideal X Y
  closedUnderScalar : ∀ (X Y : BanachSpace) (α : ℝ) (T : BoundedLinearOperator X Y),
    T ∈ ideal X Y → α • T ∈ ideal X Y
  closedUnderComposition : ∀ (X Y Z : BanachSpace) (T : BoundedLinearOperator X Y) (S : BoundedLinearOperator Y Z),
    T ∈ ideal X Y → S ∈ ideal Y Z → S.comp T ∈ ideal X Z
  containsFiniteRank : ∀ (X Y : BanachSpace), finiteRankOperators X Y ⊆ ideal X Y

structure OperatorIdealPackage where
  X Y : BanachSpace
  ideal : OperatorIdeal
  operator : BoundedLinearOperator X Y
  operatorInIdeal : operator ∈ ideal.ideal X Y

structure OperatorIdealEvidence (P : OperatorIdealPackage) where
  idealClosedUnderAdditionClosed : P.ideal.closedUnderAddition P.X P.Y
  idealClosedUnderScalarClosed : P.ideal.closedUnderScalar P.X P.Y
  idealClosedUnderCompositionClosed : P.ideal.closedUnderComposition P.X P.Y
  idealContainsFiniteRankClosed : P.ideal.containsFiniteRank P.X P.Y
  operatorInIdealClosed : P.operatorInIdeal

def OperatorIdealClosed (P : OperatorIdealPackage) : Prop :=
  P.operatorInIdeal ∧
  P.ideal.closedUnderAddition P.X P.Y ∧
  P.ideal.closedUnderScalar P.X P.Y ∧
  P.ideal.closedUnderComposition P.X P.Y ∧
  P.ideal.containsFiniteRank P.X P.Y

theorem operator_ideal_closed_from_evidence (P : OperatorIdealPackage)
    (E : OperatorIdealEvidence P) : OperatorIdealClosed P := by
  exact And.intro E.operatorInIdealClosed
    (And.intro E.idealClosedUnderAdditionClosed
      (And.intro E.idealClosedUnderScalarClosed
        (And.intro E.idealClosedUnderCompositionClosed
          E.idealContainsFiniteRankClosed)))

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse