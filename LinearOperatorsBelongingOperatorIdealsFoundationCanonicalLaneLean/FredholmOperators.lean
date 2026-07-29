import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure FredholmOperator where
  domain : Type
  codomain : Type
  operator : domain → codomain
  finiteDimensionalKernel : Prop
  finiteCodimensionalImage : Prop
  index : ℤ
  kernelClosed : finiteDimensionalKernel
  imageClosed : finiteCodimensionalImage

def fredholmOperatorClosed (F : FredholmOperator) : Prop :=
  F.finiteDimensionalKernel ∧ F.finiteCodimensionalImage

theorem fredholm_operator_closed (F : FredholmOperator) : fredholmOperatorClosed F :=
  And.intro F.kernelClosed F.imageClosed

structure FredholmIdeal where
  operators : Set (FredholmOperator)
  idealProperty : Prop
  indexAdditivity : Prop
  idealPropertyClosed : idealProperty
  indexAdditivityClosed : indexAdditivity

def fredholmIdealClosed (I : FredholmIdeal) : Prop :=
  I.idealProperty ∧ I.indexAdditivity

theorem fredholm_ideal_closed (I : FredholmIdeal) : fredholmIdealClosed I :=
  And.intro I.idealPropertyClosed I.indexAdditivityClosed

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse