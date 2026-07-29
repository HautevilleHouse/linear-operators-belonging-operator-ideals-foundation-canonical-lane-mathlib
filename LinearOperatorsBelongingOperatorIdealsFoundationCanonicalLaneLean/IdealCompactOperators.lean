import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure IdealCompactOperatorsPackage where
  compactOperatorClass : OperatorIdealClass
  finiteRankApproximation : Prop
  schattenpContainment : Prop
  compactnessCriterion : Prop

structure IdealCompactOperatorsEvidence (P : IdealCompactOperatorsPackage) where
  finiteRankApproximationClosed : P.finiteRankApproximation
  schattenpContainmentClosed : P.schattenpContainment
  compactnessCriterionClosed : P.compactnessCriterion

def IdealCompactOperatorsClosed (P : IdealCompactOperatorsPackage) : Prop :=
  P.finiteRankApproximation ∧ P.schattenpContainment ∧ P.compactnessCriterion

theorem ideal_compact_operators_closed_from_evidence
    (P : IdealCompactOperatorsPackage)
    (E : IdealCompactOperatorsEvidence P) :
    IdealCompactOperatorsClosed P := by
  exact And.intro E.finiteRankApproximationClosed
    (And.intro E.schattenpContainmentClosed E.compactnessCriterionClosed)

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse
