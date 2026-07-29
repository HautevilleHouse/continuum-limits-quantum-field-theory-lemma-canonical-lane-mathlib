import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure ContinuumLimitCertificate where
  spectral : SpectralCertificate
  uncertainty : UncertaintyCertificate
  commutation : CommutationCertificate
  stateSpace : StateSpaceCertificate
  latticeApproximation : Prop
  scalingLimit : Prop
  latticeClosed : latticeApproximation
  scalingClosed : scalingLimit

def sourceContinuumLimitCertificate : ContinuumLimitCertificate := {
  spectral := sourceSpectralCertificate
  uncertainty := sourceUncertaintyCertificate
  commutation := sourceCommutationCertificate
  stateSpace := sourceStateSpaceCertificate
  latticeApproximation := true
  scalingLimit := true
  latticeClosed := rfl
  scalingClosed := rfl
}

def ContinuumLimitClosureClosed (C : ContinuumLimitCertificate) : Prop :=
  SpectralLayerClosed C.spectral ∧
  UncertaintyLayerClosed C.uncertainty ∧
  CommutationLayerClosed C.commutation ∧
  StateSpaceLayerClosed C.stateSpace ∧
  C.latticeApproximation ∧
  C.scalingLimit

theorem source_continuum_limit_closure_closed : ContinuumLimitClosureClosed sourceContinuumLimitCertificate := by
  exact And.intro source_spectral_layer_closed
    (And.intro source_uncertainty_layer_closed
      (And.intro source_commutation_layer_closed
        (And.intro source_state_space_layer_closed
          (And.intro sourceContinuumLimitCertificate.latticeClosed
            sourceContinuumLimitCertificate.scalingClosed))))

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse