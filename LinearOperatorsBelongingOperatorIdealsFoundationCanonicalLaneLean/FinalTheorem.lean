import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

def ConstrainedOperatorIdealClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_operator_ideal_endgame (A : AdmissibleClass) :
    ConstrainedOperatorIdealClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse