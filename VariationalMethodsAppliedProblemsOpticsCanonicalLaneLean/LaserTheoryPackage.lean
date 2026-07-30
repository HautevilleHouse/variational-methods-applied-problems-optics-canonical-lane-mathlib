import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure LaserTheoryPackage where
  gainMedium : Type u
  resonatorCavity : Type v
  populationInversion : Prop
  thresholdCondition : Prop
  modeCompetition : Prop
  outputCoupling : Prop

structure LaserTheoryEvidence (P : LaserTheoryPackage) where
  populationInversionClosed : P.populationInversion
  thresholdConditionClosed : P.thresholdCondition
  modeCompetitionClosed : P.modeCompetition
  outputCouplingClosed : P.outputCoupling

def LaserTheoryClosed (P : LaserTheoryPackage) : Prop :=
  P.populationInversion ∧ P.thresholdCondition ∧ P.modeCompetition ∧ P.outputCoupling

theorem laser_theory_closed_from_evidence (P : LaserTheoryPackage) (E : LaserTheoryEvidence P) : LaserTheoryClosed P := by
  exact And.intro E.populationInversionClosed (And.intro E.thresholdConditionClosed (And.intro E.modeCompetitionClosed E.outputCouplingClosed))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse