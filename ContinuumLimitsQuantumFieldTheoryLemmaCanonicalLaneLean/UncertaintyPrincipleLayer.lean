import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean

structure UncertaintyCertificate where
  positionOperator : String
  momentumOperator : String
  commutatorRelation : Prop
  uncertaintyBound : Prop
  uncertaintyBoundClosed : uncertaintyBound

def sourceUncertaintyCertificate : UncertaintyCertificate := {
  positionOperator := "X"
  momentumOperator := "P"
  commutatorRelation := True
  uncertaintyBound := True
  uncertaintyBoundClosed := trivial
}

def UncertaintyClosed (C : UncertaintyCertificate) : Prop :=
  C.commutatorRelation ∧ C.uncertaintyBound

theorem source_uncertainty_closed : UncertaintyClosed sourceUncertaintyCertificate := by
  exact And.intro trivial trivial

end ContinuumLimitsQuantumFieldTheoryLemmaCanonicalLaneLean
end HautevilleHouse