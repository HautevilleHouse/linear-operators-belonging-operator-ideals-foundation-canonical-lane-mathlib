import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean.OperatorIdealStructure

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure ApproximationProperty (V W : OperatorSpace) (I : OperatorIdeal V W) where
  finiteRankApproximation : Prop
  compactApproximation : Prop
  idealApproximation : Prop

structure ApproximationEvidence {V W : OperatorSpace} {I : OperatorIdeal V W}
    (A : ApproximationProperty V W I) where
  finiteRankApproximationClosed : A.finiteRankApproximation
  compactApproximationClosed : A.compactApproximation
  idealApproximationClosed : A.idealApproximation

def ApproximationClosed {V W : OperatorSpace} {I : OperatorIdeal V W}
    (A : ApproximationProperty V W I) : Prop :=
  A.finiteRankApproximation ∧ A.compactApproximation ∧ A.idealApproximation

theorem approximation_closed_from_evidence {V W : OperatorSpace} {I : OperatorIdeal V W}
    (A : ApproximationProperty V W I) (E : ApproximationEvidence A) : ApproximationClosed A := by
  exact And.intro E.finiteRankApproximationClosed
    (And.intro E.compactApproximationClosed E.idealApproximationClosed)

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse