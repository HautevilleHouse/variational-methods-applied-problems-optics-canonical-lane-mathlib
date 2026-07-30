import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure VariationalOpticsPackage where
  actionFunctional : Prop
  eulerLagrangeEquations : Prop
  fermatPrinciple : Prop
  variationalApproachToWaveEquation : Prop
  finiteElementDiscretization : Prop
  optimizationOfOpticalSystems : Prop
  shapeDesign : Prop

structure VariationalOpticsEvidence (V : VariationalOpticsPackage) where
  actionFunctionalClosed : V.actionFunctional
  eulerLagrangeEquationsClosed : V.eulerLagrangeEquations
  fermatPrincipleClosed : V.fermatPrinciple
  variationalApproachToWaveEquationClosed : V.variationalApproachToWaveEquation
  finiteElementDiscretizationClosed : V.finiteElementDiscretization
  optimizationOfOpticalSystemsClosed : V.optimizationOfOpticalSystems
  shapeDesignClosed : V.shapeDesign

def VariationalOpticsClosed (V : VariationalOpticsPackage) : Prop :=
  V.actionFunctional ∧ V.eulerLagrangeEquations ∧ V.fermatPrinciple ∧ V.variationalApproachToWaveEquation ∧ V.finiteElementDiscretization ∧ V.optimizationOfOpticalSystems ∧ V.shapeDesign

theorem variational_optics_closed_from_evidence (V : VariationalOpticsPackage) (E : VariationalOpticsEvidence V) : VariationalOpticsClosed V := by
  exact And.intro E.actionFunctionalClosed
    (And.intro E.eulerLagrangeEquationsClosed
      (And.intro E.fermatPrincipleClosed
        (And.intro E.variationalApproachToWaveEquationClosed
          (And.intro E.finiteElementDiscretizationClosed
            (And.intro E.optimizationOfOpticalSystemsClosed E.shapeDesignClosed)))))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse