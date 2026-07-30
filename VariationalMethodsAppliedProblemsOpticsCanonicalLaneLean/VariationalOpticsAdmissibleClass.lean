import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure OpticsAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  mediumProperties : Prop
  waveEquation : Prop
  conclusion : waveEquation

structure AdmissibleClass where
  object : OpticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OpticsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def OpticsWitnessClosed (O : OpticsAdmittedObject) : Prop :=
  O.waveEquation

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse