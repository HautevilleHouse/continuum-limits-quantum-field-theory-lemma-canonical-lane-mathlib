import ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

def ConstrainedContinuumLimitsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuum_limits_closure (A : AdmissibleClass) :
    ConstrainedContinuumLimitsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse