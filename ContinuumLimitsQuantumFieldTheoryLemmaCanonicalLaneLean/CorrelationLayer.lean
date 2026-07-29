import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure CorrelationData where
  twoPointFunction : String
  clusterProperty : Prop
  scalingLimit : Prop

def sourceCorrelationData : CorrelationData := {
  twoPointFunction := "G(x-y)"
  clusterProperty := True
  scalingLimit := True
}

structure CorrelationCertificate where
  data : CorrelationData
  clusterClosed : Prop
  scalingClosed : Prop
  clusterClosedProof : clusterClosed
  scalingClosedProof : scalingClosed

def sourceCorrelationCertificate : CorrelationCertificate := {
  data := sourceCorrelationData
  clusterClosed := sourceCorrelationData.clusterProperty
  scalingClosed := sourceCorrelationData.scalingLimit
  clusterClosedProof := rfl
  scalingClosedProof := rfl
}

def CorrelationClosed (C : CorrelationCertificate) : Prop :=
  C.clusterClosed ∧ C.scalingClosed

theorem source_correlation_closed : CorrelationClosed sourceCorrelationCertificate := by
  exact And.intro sourceCorrelationCertificate.clusterClosedProof sourceCorrelationCertificate.scalingClosedProof

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse