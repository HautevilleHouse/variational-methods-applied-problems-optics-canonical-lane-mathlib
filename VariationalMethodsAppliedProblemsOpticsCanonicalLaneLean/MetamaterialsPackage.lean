import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure MetamaterialsPackage where
  unitCellGeometry : Type u
  effectivePermittivity : Type v
  effectivePermeability : Prop
  negativeRefraction : Prop
  subwavelengthImaging : Prop
  homogenizationLimit : Prop

structure MetamaterialsEvidence (P : MetamaterialsPackage) where
  effectivePermeabilityClosed : P.effectivePermeability
  negativeRefractionClosed : P.negativeRefraction
  subwavelengthImagingClosed : P.subwavelengthImaging
  homogenizationLimitClosed : P.homogenizationLimit

def MetamaterialsClosed (P : MetamaterialsPackage) : Prop :=
  P.effectivePermeability ∧ P.negativeRefraction ∧ P.subwavelengthImaging ∧ P.homogenizationLimit

theorem metamaterials_closed_from_evidence (P : MetamaterialsPackage) (E : MetamaterialsEvidence P) : MetamaterialsClosed P := by
  exact And.intro E.effectivePermeabilityClosed (And.intro E.negativeRefractionClosed (And.intro E.subwavelengthImagingClosed E.homogenizationLimitClosed))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse