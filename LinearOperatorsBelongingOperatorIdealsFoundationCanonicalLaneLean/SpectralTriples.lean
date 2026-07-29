import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure SpectralTriple where
  algebra : Type u
  representation : algebra → (HilbertSpace → HilbertSpace)
  diracOperator : HilbertSpace → HilbertSpace
  compactResolvent : Prop

def SpectralTripleClosed (S : SpectralTriple) : Prop :=
  S.compactResolvent

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse