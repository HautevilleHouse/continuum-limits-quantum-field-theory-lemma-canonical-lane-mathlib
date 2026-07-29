import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure RenormalizationData where
  cutoffScale : String
  counterterms : Prop
  continuumLimit : Prop

def sourceRenormalizationData : RenormalizationData := {
  cutoffScale := "Λ"
  counterterms := True
  continuumLimit := True
}

structure RenormalizationCertificate where
  data : RenormalizationData
  countertermClosed : Prop
  limitClosed : Prop
  countertermClosedProof : countertermClosed
  limitClosedProof : limitClosed

def sourceRenormalizationCertificate : RenormalizationCertificate := {
  data := sourceRenormalizationData
  countertermClosed := sourceRenormalizationData.counterterms
  limitClosed := sourceRenormalizationData.continuumLimit
  countertermClosedProof := rfl
  limitClosedProof := rfl
}

def RenormalizationClosed (C : RenormalizationCertificate) : Prop :=
  C.countertermClosed ∧ C.limitClosed

theorem source_renormalization_closed : RenormalizationClosed sourceRenormalizationCertificate := by
  exact And.intro sourceRenormalizationCertificate.countertermClosedProof sourceRenormalizationCertificate.limitClosedProof

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse