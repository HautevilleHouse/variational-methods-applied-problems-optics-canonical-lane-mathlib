import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure LaserTheoryPackage where
  rateEquations : Prop
  populationInversion : Prop
  stimulatedEmission : Prop
  cavityResonance : Prop
  thresholdCondition : Prop
  gainSaturation : Prop
  beamPropagation : Prop

structure LaserTheoryEvidence (L : LaserTheoryPackage) where
  rateEquationsClosed : L.rateEquations
  populationInversionClosed : L.populationInversion
  stimulatedEmissionClosed : L.stimulatedEmission
  cavityResonanceClosed : L.cavityResonance
  thresholdConditionClosed : L.thresholdCondition
  gainSaturationClosed : L.gainSaturation
  beamPropagationClosed : L.beamPropagation

def LaserTheoryClosed (L : LaserTheoryPackage) : Prop :=
  L.rateEquations ∧ L.populationInversion ∧ L.stimulatedEmission ∧ L.cavityResonance ∧ L.thresholdCondition ∧ L.gainSaturation ∧ L.beamPropagation

theorem laser_theory_closed_from_evidence (L : LaserTheoryPackage) (E : LaserTheoryEvidence L) : LaserTheoryClosed L := by
  exact And.intro E.rateEquationsClosed
    (And.intro E.populationInversionClosed
      (And.intro E.stimulatedEmissionClosed
        (And.intro E.cavityResonanceClosed
          (And.intro E.thresholdConditionClosed
            (And.intro E.gainSaturationClosed E.beamPropagationClosed)))))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse