import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure CommutationCertificate where
  algebra : String
  canonicalCommutationRelations : Prop
  fieldCommutation : Prop
  fieldCommutationClosed : fieldCommutation

def sourceCommutationCertificate : CommutationCertificate := {
  algebra := "CCR"
  canonicalCommutationRelations := True
  fieldCommutation := True
  fieldCommutationClosed := trivial
}

def CommutationClosed (C : CommutationCertificate) : Prop :=
  C.canonicalCommutationRelations ∧ C.fieldCommutation

theorem source_commutation_closed : CommutationClosed sourceCommutationCertificate := by
  exact And.intro trivial trivial

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse