import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure MaxwellEquationsPackage where
  fieldsDefined : Prop
  gaussLaw : Prop
  faradayLaw : Prop
  ampereLaw : Prop
  constitutiveRelations : Prop

structure MaxwellVariationalEvidence (M : MaxwellEquationsPackage) where
  fieldsDefinedClosed : M.fieldsDefined
  gaussLawClosed : M.gaussLaw
  faradayLawClosed : M.faradayLaw
  ampereLawClosed : M.ampereLaw
  constitutiveRelationsClosed : M.constitutiveRelations

def MaxwellVariationalClosed (M : MaxwellEquationsPackage) : Prop :=
  M.fieldsDefined ∧ M.gaussLaw ∧ M.faradayLaw ∧ M.ampereLaw ∧ M.constitutiveRelations

theorem maxwell_variational_closed_from_evidence (M : MaxwellEquationsPackage)
    (E : MaxwellVariationalEvidence M) : MaxwellVariationalClosed M := by
  exact And.intro E.fieldsDefinedClosed
    (And.intro E.gaussLawClosed
      (And.intro E.faradayLawClosed
        (And.intro E.ampereLawClosed E.constitutiveRelationsClosed)))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse
