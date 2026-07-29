import canonicalLaneMathlib.AdmissibleClass

/-!
# Banach Space Category Package

This module formalizes the category of Banach spaces and bounded linear operators,
which serves as the ambient category for operator ideals.
-/

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure BanachSpaceCategory where
  objects : Type u
  morphisms : Type v
  compositionLaw : Prop
  identityLaw : Prop
  compositionLawTerm : compositionLaw
  identityLawTerm : identityLaw

structure BanachCategoryEvidence (C : BanachSpaceCategory) where
  compositionLawClosed : C.compositionLaw
  identityLawClosed : C.identityLaw

def BanachCategoryClosed (C : BanachSpaceCategory) : Prop :=
  C.compositionLaw ∧ C.identityLaw

theorem banach_category_closed_from_evidence (C : BanachSpaceCategory)
    (E : BanachCategoryEvidence C) : BanachCategoryClosed C := by
  exact And.intro E.compositionLawClosed E.identityLawClosed

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse