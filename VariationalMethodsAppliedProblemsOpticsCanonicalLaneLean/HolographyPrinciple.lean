import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure HolographyPrinciplePackage where
  interferencePattern : Prop
  referenceWave : Prop
  objectWave : Prop
  reconstruction : Prop

structure HolographyPrincipleEvidence (H : HolographyPrinciplePackage) where
  interferencePatternClosed : H.interferencePattern
  referenceWaveClosed : H.referenceWave
  objectWaveClosed : H.objectWave
  reconstructionClosed : H.reconstruction

def HolographyPrincipleClosed (H : HolographyPrinciplePackage) : Prop :=
  H.interferencePattern ∧ H.referenceWave ∧ H.objectWave ∧ H.reconstruction

theorem holography_principle_closed_from_evidence (H : HolographyPrinciplePackage)
    (E : HolographyPrincipleEvidence H) : HolographyPrincipleClosed H := by
  exact And.intro E.interferencePatternClosed
    (And.intro E.referenceWaveClosed
      (And.intro E.objectWaveClosed E.reconstructionClosed))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse