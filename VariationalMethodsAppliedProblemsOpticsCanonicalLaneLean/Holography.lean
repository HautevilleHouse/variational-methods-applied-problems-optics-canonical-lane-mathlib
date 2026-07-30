import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure HolographyPackage where
  interferencePattern : Prop
  referenceWave : Prop
  objectWave : Prop
  recordingMedium : Prop
  reconstruction : Prop
  resolutionLimit : Prop
  phaseConjugation : Prop

structure HolographyEvidence (H : HolographyPackage) where
  interferencePatternClosed : H.interferencePattern
  referenceWaveClosed : H.referenceWave
  objectWaveClosed : H.objectWave
  recordingMediumClosed : H.recordingMedium
  reconstructionClosed : H.reconstruction
  resolutionLimitClosed : H.resolutionLimit
  phaseConjugationClosed : H.phaseConjugation

def HolographyClosed (H : HolographyPackage) : Prop :=
  H.interferencePattern ∧ H.referenceWave ∧ H.objectWave ∧ H.recordingMedium ∧ H.reconstruction ∧ H.resolutionLimit ∧ H.phaseConjugation

theorem holography_closed_from_evidence (H : HolographyPackage) (E : HolographyEvidence H) : HolographyClosed H := by
  exact And.intro E.interferencePatternClosed
    (And.intro E.referenceWaveClosed
      (And.intro E.objectWaveClosed
        (And.intro E.recordingMediumClosed
          (And.intro E.reconstructionClosed
            (And.intro E.resolutionLimitClosed E.phaseConjugationClosed)))))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse