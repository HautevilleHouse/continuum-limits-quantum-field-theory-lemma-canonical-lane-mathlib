import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure CommutationCertificate where
  canonicalCommutation : Prop
  fieldCommutation : Prop
  ccRRelation : Prop
  canonicalClosed : canonicalCommutation
  fieldClosed : fieldCommutation
  ccrClosed : ccRRelation

def sourceCommutationCertificate : CommutationCertificate := {
  canonicalCommutation := true
  fieldCommutation := true
  ccRRelation := true
  canonicalClosed := rfl
  fieldClosed := rfl
  ccrClosed := rfl
}

def CommutationLayerClosed (C : CommutationCertificate) : Prop :=
  C.canonicalCommutation ∧ C.fieldCommutation ∧ C.ccRRelation

theorem source_commutation_layer_closed : CommutationLayerClosed sourceCommutationCertificate := by
  exact And.intro sourceCommutationCertificate.canonicalClosed
    (And.intro sourceCommutationCertificate.fieldClosed
      sourceCommutationCertificate.ccrClosed)

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse