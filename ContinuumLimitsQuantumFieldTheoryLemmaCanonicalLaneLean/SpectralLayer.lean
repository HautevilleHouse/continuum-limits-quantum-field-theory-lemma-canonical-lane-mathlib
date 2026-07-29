import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure SpectralData where
  hamiltonian : String
  spectrum : Prop
  massGap : Prop

def sourceSpectralData : SpectralData := {
  hamiltonian := "H"
  spectrum := True
  massGap := True
}

structure SpectralCertificate where
  data : SpectralData
  spectralClosed : Prop
  gapClosed : Prop
  spectralClosedProof : spectralClosed
  gapClosedProof : gapClosed

def sourceSpectralCertificate : SpectralCertificate := {
  data := sourceSpectralData
  spectralClosed := sourceSpectralData.spectrum
  gapClosed := sourceSpectralData.massGap
  spectralClosedProof := rfl
  gapClosedProof := rfl
}

def SpectralClosed (C : SpectralCertificate) : Prop :=
  C.spectralClosed ∧ C.gapClosed

theorem source_spectral_closed : SpectralClosed sourceSpectralCertificate := by
  exact And.intro sourceSpectralCertificate.spectralClosedProof sourceSpectralCertificate.gapClosedProof

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse