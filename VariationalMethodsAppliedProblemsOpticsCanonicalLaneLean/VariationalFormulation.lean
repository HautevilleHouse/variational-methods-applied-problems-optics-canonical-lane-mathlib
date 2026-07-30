import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure VariationalOpticsPackage where
  lagrangianDensity : Prop
  eulerLagrangeEquations : Prop
  principleOfStationaryAction : Prop
  conservationLaws : Prop
  canonicalMomentum : Prop
  hamiltonianFormulation : Prop

structure VariationalOpticsEvidence (V : VariationalOpticsPackage) where
  lagrangianDensityClosed : V.lagrangianDensity
  eulerLagrangeEquationsClosed : V.eulerLagrangeEquations
  principleOfStationaryActionClosed : V.principleOfStationaryAction
  conservationLawsClosed : V.conservationLaws
  canonicalMomentumClosed : V.canonicalMomentum
  hamiltonianFormulationClosed : V.hamiltonianFormulation

def VariationalOpticsClosed (V : VariationalOpticsPackage) : Prop :=
  V.lagrangianDensity ∧ V.eulerLagrangeEquations ∧ V.principleOfStationaryAction ∧
  V.conservationLaws ∧ V.canonicalMomentum ∧ V.hamiltonianFormulation

theorem variational_optics_closed_from_evidence (V : VariationalOpticsPackage)
    (E : VariationalOpticsEvidence V) : VariationalOpticsClosed V := by
  exact And.intro E.lagrangianDensityClosed
    (And.intro E.eulerLagrangeEquationsClosed
      (And.intro E.principleOfStationaryActionClosed
        (And.intro E.conservationLawsClosed
          (And.intro E.canonicalMomentumClosed
            E.hamiltonianFormulationClosed))))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse