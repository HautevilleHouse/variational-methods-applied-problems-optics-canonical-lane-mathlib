import VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean.VariationalOpticsAdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure MaxwellVariationalPackage where
  actionFunctional : Prop
  eulerLagrangeEquations : Prop
  maxwellEquationsDerived : Prop
  mediumConstitutiveRelations : Prop

structure MaxwellVariationalEvidence (M : MaxwellVariationalPackage) where
  actionFunctionalClosed : M.actionFunctional
  eulerLagrangeEquationsClosed : M.eulerLagrangeEquations
  maxwellEquationsDerivedClosed : M.maxwellEquationsDerived
  mediumConstitutiveRelationsClosed : M.mediumConstitutiveRelations

def MaxwellVariationalClosed (M : MaxwellVariationalPackage) : Prop :=
  M.actionFunctional ∧ M.eulerLagrangeEquations ∧ M.maxwellEquationsDerived ∧ M.mediumConstitutiveRelations

theorem maxwell_variational_closed_from_evidence (M : MaxwellVariationalPackage) (E : MaxwellVariationalEvidence M) :
    MaxwellVariationalClosed M := by
  exact And.intro E.actionFunctionalClosed (And.intro E.eulerLagrangeEquationsClosed (And.intro E.maxwellEquationsDerivedClosed E.mediumConstitutiveRelationsClosed))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse