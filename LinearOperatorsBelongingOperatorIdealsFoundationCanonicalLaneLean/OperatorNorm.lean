import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure OperatorNormData where
  domain : Type
  codomain : Type
  linearMap : domain → codomain
  norm : ℝ
  boundedness : Prop
  normClosed : boundedness

def operatorNormClosed (N : OperatorNormData) : Prop :=
  N.boundedness

theorem operator_norm_closed_from_boundedness (N : OperatorNormData) : operatorNormClosed N :=
  N.normClosed

structure BoundedLinearOperator where
  operatorNorm : OperatorNormData
  linearity : Prop
  linearityClosed : linearity

def boundedLinearOperatorClosed (B : BoundedLinearOperator) : Prop :=
  operatorNormClosed B.operatorNorm ∧ B.linearity

theorem bounded_linear_operator_closed_from_conditions (B : BoundedLinearOperator) : boundedLinearOperatorClosed B :=
  And.intro (operator_norm_closed_from_boundedness B.operatorNorm) B.linearityClosed

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse