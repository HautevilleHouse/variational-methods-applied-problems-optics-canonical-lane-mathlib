import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure MaxwellEquationsPackage where
  electricField : Type u
  magneticField : Type v
  sourceTerms : Prop
  boundaryConditions : Prop
  divergenceConstraints : Prop
  dynamicsLaws : Prop

structure MaxwellEquationsEvidence (P : MaxwellEquationsPackage) where
  sourceTermsClosed : P.sourceTerms
  boundaryConditionsClosed : P.boundaryConditions
  divergenceConstraintsClosed : P.divergenceConstraints
  dynamicsLawsClosed : P.dynamicsLaws

def MaxwellEquationsClosed (P : MaxwellEquationsPackage) : Prop :=
  P.sourceTerms ∧ P.boundaryConditions ∧ P.divergenceConstraints ∧ P.dynamicsLaws

theorem maxwell_equations_closed_from_evidence (P : MaxwellEquationsPackage) (E : MaxwellEquationsEvidence P) : MaxwellEquationsClosed P := by
  exact And.intro E.sourceTermsClosed (And.intro E.boundaryConditionsClosed (And.intro E.divergenceConstraintsClosed E.dynamicsLawsClosed))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse