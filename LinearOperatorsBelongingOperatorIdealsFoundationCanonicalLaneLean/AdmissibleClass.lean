import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure AdmittedOperatorIdeal where
  X Y : BanachSpace
  T : BoundedLinearOperator X Y
  ideal : OperatorIdeal
  membership : T ∈ ideal.ideal X Y
  finiteRankClose : ∃ (F : BoundedLinearOperator X Y), F ∈ finiteRankOperators X Y ∧ ‖T - F‖ < 1

structure AdmissibleClass where
  object : AdmittedOperatorIdeal
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ (n : ℕ), A.object.T ∈ (A.object.ideal.ideal A.object.X A.object.Y : Set _)) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse