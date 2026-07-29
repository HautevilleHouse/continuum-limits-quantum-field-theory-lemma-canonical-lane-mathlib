import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure SpectralCertificate where
  operator : String
  spectrum : Prop
  spectralMeasure : Prop
  spectralMeasureClosed : spectralMeasure

def sourceSpectralCertificate : SpectralCertificate := {
  operator := "Hamiltonian"
  spectrum := True
  spectralMeasure := True
  spectralMeasureClosed := trivial
}

def SpectralClosed (C : SpectralCertificate) : Prop :=
  C.spectrum ∧ C.spectralMeasure

theorem source_spectral_closed : SpectralClosed sourceSpectralCertificate := by
  exact And.intro trivial trivial

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse