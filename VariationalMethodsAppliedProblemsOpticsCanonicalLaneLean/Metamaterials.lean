import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure MetamaterialsPackage where
  effectivePermittivity : Prop
  effectivePermeability : Prop
  negativeRefractiveIndex : Prop
  subwavelengthResolution : Prop
  homogenizationTheory : Prop
  bianisotropicCoupling : Prop
  transformationOptics : Prop

structure MetamaterialsEvidence (M : MetamaterialsPackage) where
  effectivePermittivityClosed : M.effectivePermittivity
  effectivePermeabilityClosed : M.effectivePermeability
  negativeRefractiveIndexClosed : M.negativeRefractiveIndex
  subwavelengthResolutionClosed : M.subwavelengthResolution
  homogenizationTheoryClosed : M.homogenizationTheory
  bianisotropicCouplingClosed : M.bianisotropicCoupling
  transformationOpticsClosed : M.transformationOptics

def MetamaterialsClosed (M : MetamaterialsPackage) : Prop :=
  M.effectivePermittivity ∧ M.effectivePermeability ∧ M.negativeRefractiveIndex ∧ M.subwavelengthResolution ∧ M.homogenizationTheory ∧ M.bianisotropicCoupling ∧ M.transformationOptics

theorem metamaterials_closed_from_evidence (M : MetamaterialsPackage) (E : MetamaterialsEvidence M) : MetamaterialsClosed M := by
  exact And.intro E.effectivePermittivityClosed
    (And.intro E.effectivePermeabilityClosed
      (And.intro E.negativeRefractiveIndexClosed
        (And.intro E.subwavelengthResolutionClosed
          (And.intro E.homogenizationTheoryClosed
            (And.intro E.bianisotropicCouplingClosed E.transformationOpticsClosed)))))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse