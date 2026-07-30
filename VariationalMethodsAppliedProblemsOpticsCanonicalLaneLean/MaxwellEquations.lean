import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure MaxwellEquationsPackage where
  gaussLawElectric : Prop
  gaussLawMagnetic : Prop
  faradayLaw : Prop
  ampereLaw : Prop
  mediumConstitutiveRelations : Prop
  boundaryConditions : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  gaussLawElectricClosed : M.gaussLawElectric
  gaussLawMagneticClosed : M.gaussLawMagnetic
  faradayLawClosed : M.faradayLaw
  ampereLawClosed : M.ampereLaw
  mediumConstitutiveRelationsClosed : M.mediumConstitutiveRelations
  boundaryConditionsClosed : M.boundaryConditions

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.gaussLawElectric ∧ M.gaussLawMagnetic ∧ M.faradayLaw ∧ M.ampereLaw ∧
  M.mediumConstitutiveRelations ∧ M.boundaryConditions

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage)
    (E : MaxwellEquationsEvidence M) : MaxwellEquationsClosed M := by
  exact And.intro E.gaussLawElectricClosed
    (And.intro E.gaussLawMagneticClosed
      (And.intro E.faradayLawClosed
        (And.intro E.ampereLawClosed
          (And.intro E.mediumConstitutiveRelationsClosed
            E.boundaryConditionsClosed))))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse