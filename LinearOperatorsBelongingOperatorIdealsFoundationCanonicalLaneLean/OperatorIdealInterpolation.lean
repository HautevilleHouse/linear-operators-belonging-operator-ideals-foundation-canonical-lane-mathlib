import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure OperatorIdealInterpolationPackage {I J K : OperatorIdealClass}
    (N : OperatorIdealNormPackage I) (M : OperatorIdealNormPackage J) where
  interpolationTheorem : Prop
  complexMethod : Prop
  realMethod : Prop
  endpointBounds : Prop

structure OperatorIdealInterpolationEvidence
    {I J K : OperatorIdealClass}
    {N : OperatorIdealNormPackage I} {M : OperatorIdealNormPackage J}
    (P : OperatorIdealInterpolationPackage N M) where
  interpolationTheoremClosed : P.interpolationTheorem
  complexMethodClosed : P.complexMethod
  realMethodClosed : P.realMethod
  endpointBoundsClosed : P.endpointBounds

def OperatorIdealInterpolationClosed
    {I J K : OperatorIdealClass}
    {N : OperatorIdealNormPackage I} {M : OperatorIdealNormPackage J}
    (P : OperatorIdealInterpolationPackage N M) : Prop :=
  P.interpolationTheorem ∧ P.complexMethod ∧
  P.realMethod ∧ P.endpointBounds

theorem operator_ideal_interpolation_closed_from_evidence
    {I J K : OperatorIdealClass}
    {N : OperatorIdealNormPackage I} {M : OperatorIdealNormPackage J}
    (P : OperatorIdealInterpolationPackage N M)
    (E : OperatorIdealInterpolationEvidence P) :
    OperatorIdealInterpolationClosed P := by
  exact And.intro E.interpolationTheoremClosed
    (And.intro E.complexMethodClosed
      (And.intro E.realMethodClosed E.endpointBoundsClosed))

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse
