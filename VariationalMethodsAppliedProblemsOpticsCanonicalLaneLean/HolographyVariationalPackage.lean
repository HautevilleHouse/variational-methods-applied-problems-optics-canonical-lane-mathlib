import VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean.DiffractionTheoryPackage

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure HolographyVariationalPackage where
  referenceWave : Prop
  objectWave : Prop
  interferencePattern : Prop
  reconstruction : Prop

structure HolographyVariationalEvidence (H : HolographyVariationalPackage) where
  referenceWaveClosed : H.referenceWave
  objectWaveClosed : H.objectWave
  interferencePatternClosed : H.interferencePattern
  reconstructionClosed : H.reconstruction

def HolographyVariationalClosed (H : HolographyVariationalPackage) : Prop :=
  H.referenceWave ∧ H.objectWave ∧ H.interferencePattern ∧ H.reconstruction

theorem holography_variational_closed_from_evidence (H : HolographyVariationalPackage) (E : HolographyVariationalEvidence H) :
    HolographyVariationalClosed H := by
  exact And.intro E.referenceWaveClosed (And.intro E.objectWaveClosed (And.intro E.interferencePatternClosed E.reconstructionClosed))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse