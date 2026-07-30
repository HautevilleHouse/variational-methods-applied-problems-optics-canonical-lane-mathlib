import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

structure DiffractionTheoryPackage where
  apertureGeometry : Type u
  incidentWave : Type v
  farFieldPattern : Prop
  nearFieldPattern : Prop
  angularSpectrum : Prop
  rayleighSommerfeld : Prop

structure DiffractionTheoryEvidence (P : DiffractionTheoryPackage) where
  farFieldPatternClosed : P.farFieldPattern
  nearFieldPatternClosed : P.nearFieldPattern
  angularSpectrumClosed : P.angularSpectrum
  rayleighSommerfeldClosed : P.rayleighSommerfeld

def DiffractionTheoryClosed (P : DiffractionTheoryPackage) : Prop :=
  P.farFieldPattern ∧ P.nearFieldPattern ∧ P.angularSpectrum ∧ P.rayleighSommerfeld

theorem diffraction_theory_closed_from_evidence (P : DiffractionTheoryPackage) (E : DiffractionTheoryEvidence P) : DiffractionTheoryClosed P := by
  exact And.intro E.farFieldPatternClosed (And.intro E.nearFieldPatternClosed (And.intro E.angularSpectrumClosed E.rayleighSommerfeldClosed))

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse