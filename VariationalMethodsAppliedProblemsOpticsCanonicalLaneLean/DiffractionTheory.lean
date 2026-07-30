import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure DiffractionPackage where
  helmholtzEquation : Prop
  huygensFresnelPrinciple : Prop
  rayleighSommerfeldIntegral : Prop
  kirchhoffBoundaryConditions : Prop
  fraunhoferApproximation : Prop
  fresnelApproximation : Prop

structure DiffractionEvidence (D : DiffractionPackage) where
  helmholtzEquationClosed : D.helmholtzEquation
  huygensFresnelPrincipleClosed : D.huygensFresnelPrinciple
  rayleighSommerfeldIntegralClosed : D.rayleighSommerfeldIntegral
  kirchhoffBoundaryConditionsClosed : D.kirchhoffBoundaryConditions
  fraunhoferApproximationClosed : D.fraunhoferApproximation
  fresnelApproximationClosed : D.fresnelApproximation

def DiffractionClosed (D : DiffractionPackage) : Prop :=
  D.helmholtzEquation ∧ D.huygensFresnelPrinciple ∧ D.rayleighSommerfeldIntegral ∧
  D.kirchhoffBoundaryConditions ∧ D.fraunhoferApproximation ∧ D.fresnelApproximation

theorem diffraction_closed_from_evidence (D : DiffractionPackage)
    (E : DiffractionEvidence D) : DiffractionClosed D := by
  exact And.intro E.helmholtzEquationClosed
    (And.intro E.huygensFresnelPrincipleClosed
      (And.intro E.rayleighSommerfeldIntegralClosed
        (And.intro E.kirchhoffBoundaryConditionsClosed
          (And.intro E.fraunhoferApproximationClosed
            E.fresnelApproximationClosed))))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse