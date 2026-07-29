import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure OperatorIdealNormPackage (I : OperatorIdealClass) where
  normFunction : Type u
  normProperties : Prop
  triangleInequality : Prop
  idealProperty : Prop
  completeness : Prop

structure OperatorIdealNormEvidence {I : OperatorIdealClass}
    (N : OperatorIdealNormPackage I) where
  normPropertiesClosed : N.normProperties
  triangleInequalityClosed : N.triangleInequality
  idealPropertyClosed : N.idealProperty
  completenessClosed : N.completeness

def OperatorIdealNormClosed {I : OperatorIdealClass}
    (N : OperatorIdealNormPackage I) : Prop :=
  N.normProperties ∧ N.triangleInequality ∧
  N.idealProperty ∧ N.completeness

theorem operator_ideal_norm_closed_from_evidence {I : OperatorIdealClass}
    (N : OperatorIdealNormPackage I)
    (E : OperatorIdealNormEvidence N) : OperatorIdealNormClosed N := by
  exact And.intro E.normPropertiesClosed
    (And.intro E.triangleInequalityClosed
      (And.intro E.idealPropertyClosed E.completenessClosed))

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse
