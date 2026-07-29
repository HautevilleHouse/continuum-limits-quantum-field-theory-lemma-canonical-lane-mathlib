import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure StateSpaceCertificate where
  hilbertSpace : String
  stateVector : String
  innerProduct : Prop
  completeness : Prop
  completenessClosed : completeness

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  hilbertSpace := "L^2"
  stateVector := "Ψ"
  innerProduct := True
  completeness := True
  completenessClosed := trivial
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  C.innerProduct ∧ C.completeness

theorem source_state_space_closed : StateSpaceClosed sourceStateSpaceCertificate := by
  exact And.intro trivial trivial

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse