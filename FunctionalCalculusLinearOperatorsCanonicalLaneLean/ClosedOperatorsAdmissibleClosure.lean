import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.FunctionalCalculusOperator

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

open FunctionalCalculusOperator

structure ClosedOperatorEvidence (H : Type u) [InnerProductSpace ℂ H] (A : LinearOperator H) where
  graphClosed : IsClosed (LinearOperator.graph A)
  impliesDenselyDefined : denseDomain A.domain

def ClosedOperatorAdmissibleClass (H : Type u) [InnerProductSpace ℂ H] (A : LinearOperator H) (E : ClosedOperatorEvidence H A) : AdmissibleClass :=
  {
    object := (H, A)
    endpointSatisfied := A.closedOperator
    remainderRecorded := False
    gateWitness := Or.inl E.graphClosed
  }

theorem closed_operator_bridge_closed (H : Type u) [InnerProductSpace ℂ H] (A : LinearOperator H) (E : ClosedOperatorEvidence H A) :
  bridgeClosed (ClosedOperatorAdmissibleClass H A E) := by
  exact True.intro

theorem closed_operator_gate_closed (H : Type u) [InnerProductSpace ℂ H] (A : LinearOperator H) (E : ClosedOperatorEvidence H A) :
  gateClosed (ClosedOperatorAdmissibleClass H A E) := by
  exact Or.inl E.graphClosed

def ConstrainedClosedOperatorClosure (H : Type u) [InnerProductSpace ℂ H] (A : LinearOperator H) (E : ClosedOperatorEvidence H A) : Prop :=
  bridgeClosed (ClosedOperatorAdmissibleClass H A E) ∧ gateClosed (ClosedOperatorAdmissibleClass H A E)

theorem closed_operator_endgame (H : Type u) [InnerProductSpace ℂ H] (A : LinearOperator H) (E : ClosedOperatorEvidence H A) :
  ConstrainedClosedOperatorClosure H A E := by
  exact And.intro (closed_operator_bridge_closed H A E) (closed_operator_gate_closed H A E)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse