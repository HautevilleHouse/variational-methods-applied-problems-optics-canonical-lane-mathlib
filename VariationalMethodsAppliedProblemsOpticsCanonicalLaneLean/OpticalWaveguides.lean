import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure OpticalWaveguidesPackage where
  waveEquation : Prop
  modeSolver : Prop
  dispersionRelation : Prop
  couplingEfficiency : Prop
  polarizationEffects : Prop

structure OpticalWaveguidesEvidence (O : OpticalWaveguidesPackage) where
  waveEquationClosed : O.waveEquation
  modeSolverClosed : O.modeSolver
  dispersionRelationClosed : O.dispersionRelation
  couplingEfficiencyClosed : O.couplingEfficiency
  polarizationEffectsClosed : O.polarizationEffects

def OpticalWaveguidesClosed (O : OpticalWaveguidesPackage) : Prop :=
  O.waveEquation ∧ O.modeSolver ∧ O.dispersionRelation ∧ O.couplingEfficiency ∧ O.polarizationEffects

theorem optical_waveguides_closed_from_evidence (O : OpticalWaveguidesPackage)
    (E : OpticalWaveguidesEvidence O) : OpticalWaveguidesClosed O := by
  exact And.intro E.waveEquationClosed
    (And.intro E.modeSolverClosed
      (And.intro E.dispersionRelationClosed
        (And.intro E.couplingEfficiencyClosed E.polarizationEffectsClosed)))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse
