import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure OpticsAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  mediumProperties : Prop
  waveEquationSolution : Prop
  boundaryConditions : Prop
  conclusion : waveEquationSolution ∧ boundaryConditions

structure AdmissibleClass where
  object : OpticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OpticsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def OpticsWitnessClosed (O : OpticsAdmittedObject) : Prop :=
  O.waveEquationSolution ∧ O.boundaryConditions

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse