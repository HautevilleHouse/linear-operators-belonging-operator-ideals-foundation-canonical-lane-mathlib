import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure SchattenClass (p : ℝ) where
  operators : Type u
  norm : operators → ℝ
  isBanach : Prop
  isOperatorIdeal : Prop
  closedUnderAdjoints : Prop

def SchattenClassClosed {p : ℝ} (S : SchattenClass p) : Prop :=
  S.isBanach ∧ S.isOperatorIdeal ∧ S.closedUnderAdjoints

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse