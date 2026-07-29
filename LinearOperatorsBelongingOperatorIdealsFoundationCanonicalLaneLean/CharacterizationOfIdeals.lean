import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean.OperatorIdealStructure
import LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean.SchattenVonNeumannClasses

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure CalkinCorrespondence (V : OperatorSpace) where
  ideal : OperatorIdeal V V
  mapping : Set (V.carrier → V.carrier)
  kernelDescription : Prop

structure KuenstermannCharacterization (V : OperatorSpace) (params : SchattenClassParameters) where
  ideal : OperatorIdeal V V
  normInequalities : Prop
  interpolationIdentity : Prop

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse