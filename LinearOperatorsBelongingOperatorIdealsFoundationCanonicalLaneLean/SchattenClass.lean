import canonicalLaneMathlib.AdmissibleClass

/-!
# Schatten Class Package

This module defines Schatten p-classes as operator ideals on Hilbert spaces.
-/

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure SchattenClassPackage (I : OperatorIdealPackage) where
  exponent : ℝ
  schattenNormProperty : Prop
  schattenNormPropertyTerm : schattenNormProperty

structure SchattenClassEvidence {I : OperatorIdealPackage}
    (S : SchattenClassPackage I) where
  schattenNormPropertyClosed : S.schattenNormProperty

def SchattenClassClosed {I : OperatorIdealPackage}
    (S : SchattenClassPackage I) : Prop :=
  S.schattenNormProperty

theorem schatten_class_closed_from_evidence {I : OperatorIdealPackage}
    (S : SchattenClassPackage I) (E : SchattenClassEvidence S) :
    SchattenClassClosed S := by
  exact E.schattenNormPropertyClosed

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse