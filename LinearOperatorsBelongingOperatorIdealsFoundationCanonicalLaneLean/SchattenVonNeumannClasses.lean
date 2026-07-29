import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean.OperatorIdealStructure

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure SchattenClassParameters where
  p : ℝ
  pPositive : p > 0
  pFinite : p < ∞

structure SchattenVonNeumannClass (V : OperatorSpace) (params : SchattenClassParameters) where
  ideal : OperatorIdeal V V
  normDefined : Prop
  holderInequality : Prop
  dualityConditions : Prop

structure SchattenClassEvidence {V : OperatorSpace} {params : SchattenClassParameters}
    (S : SchattenVonNeumannClass V params) where
  normDefinedClosed : S.normDefined
  holderInequalityClosed : S.holderInequality
  dualityConditionsClosed : S.dualityConditions

def SchattenClassClosed {V : OperatorSpace} {params : SchattenClassParameters}
    (S : SchattenVonNeumannClass V params) : Prop :=
  S.normDefined ∧ S.holderInequality ∧ S.dualityConditions

theorem schatten_class_closed_from_evidence {V : OperatorSpace} {params : SchattenClassParameters}
    (S : SchattenVonNeumannClass V params) (E : SchattenClassEvidence S) : SchattenClassClosed S := by
  exact And.intro E.normDefinedClosed
    (And.intro E.holderInequalityClosed E.dualityConditionsClosed)

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse