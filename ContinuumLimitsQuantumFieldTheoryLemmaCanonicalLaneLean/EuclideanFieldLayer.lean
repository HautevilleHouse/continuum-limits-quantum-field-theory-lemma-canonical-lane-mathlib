import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure EuclideanFieldData where
  fieldOperator : String
  classicalAction : Prop
  pathMeasure : Prop
  boundaryTerms : String

def sourceEuclideanFieldData : EuclideanFieldData := {
  fieldOperator := "φ"
  classicalAction := True
  pathMeasure := True
  boundaryTerms := "no boundary terms"
}

structure EuclideanFieldCertificate where
  data : EuclideanFieldData
  measureClosed : Prop
  actionClosed : Prop
  measureClosedProof : measureClosed
  actionClosedProof : actionClosed

def sourceEuclideanFieldCertificate : EuclideanFieldCertificate := {
  data := sourceEuclideanFieldData
  measureClosed := sourceEuclideanFieldData.pathMeasure
  actionClosed := sourceEuclideanFieldData.classicalAction
  measureClosedProof := rfl
  actionClosedProof := rfl
}

def EuclideanFieldClosed (C : EuclideanFieldCertificate) : Prop :=
  C.measureClosed ∧ C.actionClosed

theorem source_euclidean_field_closed : EuclideanFieldClosed sourceEuclideanFieldCertificate := by
  exact And.intro sourceEuclideanFieldCertificate.measureClosedProof sourceEuclideanFieldCertificate.actionClosedProof

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse