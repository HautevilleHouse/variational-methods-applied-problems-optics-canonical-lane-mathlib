import VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean.LaserTheoryVariationalPackage

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure MetamaterialsVariationalPackage where
  effectiveMediumTheory : Prop
  negativeRefraction : Prop
  subwavelengthImaging : Prop
  dispersionControl : Prop
  bandGapStructure : Prop

structure MetamaterialsVariationalEvidence (M : MetamaterialsVariationalPackage) where
  effectiveMediumTheoryClosed : M.effectiveMediumTheory
  negativeRefractionClosed : M.negativeRefraction
  subwavelengthImagingClosed : M.subwavelengthImaging
  dispersionControlClosed : M.dispersionControl
  bandGapStructureClosed : M.bandGapStructure

def MetamaterialsVariationalClosed (M : MetamaterialsVariationalPackage) : Prop :=
  M.effectiveMediumTheory ∧ M.negativeRefraction ∧ M.subwavelengthImaging ∧ M.dispersionControl ∧ M.bandGapStructure

theorem metamaterials_variational_closed_from_evidence (M : MetamaterialsVariationalPackage) (E : MetamaterialsVariationalEvidence M) :
    MetamaterialsVariationalClosed M := by
  exact And.intro E.effectiveMediumTheoryClosed (And.intro E.negativeRefractionClosed (And.intro E.subwavelengthImagingClosed (And.intro E.dispersionControlClosed E.bandGapStructureClosed)))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse