import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure OperatorSpace where
  carrier : Type u
  vectorSpaceStructure : Module ℝ carrier
  norm : carrier → ℝ
  complete : Prop

def normedSpaceStructure (V : OperatorSpace) : Prop :=
  V.vectorSpaceStructure ≠ True ∨ V.norm ≠ 0

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse