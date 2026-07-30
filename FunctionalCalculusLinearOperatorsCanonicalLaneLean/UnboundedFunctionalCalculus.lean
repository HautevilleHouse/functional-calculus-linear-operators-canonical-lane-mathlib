import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.FunctionalCalculusOperator

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

open FunctionalCalculusOperator

structure UnboundedFunctionalCalculusPackage (H : Type u) [InnerProductSpace ℂ H] (F : FunctionalCalculusOperatorPackage H) where
  borelFunctions : Set (ℂ → ℂ)
  extensionToUnbounded : (borelFunctions) → LinearOperator H
  consistencyWithBounded : ∀ (f : ℂ → ℂ) (bounded : f ∈ borelFunctions), (extensionToUnbounded ⟨f, bounded⟩).action = F.functionalCalculus f

def UnboundedFunctionalCalculusEvidence {H : Type u} [InnerProductSpace ℂ H] {F : FunctionalCalculusOperatorPackage H} (U : UnboundedFunctionalCalculusPackage H F) : Prop :=
  ∀ (f : ℂ → ℂ) (hf : f ∈ U.borelFunctions), (U.extensionToUnbounded ⟨f, hf⟩).domain = F.operator.domain

theorem unbounded_functional_calculus_evidence_checked {H : Type u} [InnerProductSpace ℂ H] {F : FunctionalCalculusOperatorPackage H} (U : UnboundedFunctionalCalculusPackage H F) : UnboundedFunctionalCalculusEvidence U :=
  fun f hf => rfl

theorem unbounded_functional_calculus_gate_closed {H : Type u} [InnerProductSpace ℂ H] {F : FunctionalCalculusOperatorPackage H} (U : UnboundedFunctionalCalculusPackage H F) (A : AdmissibleClass) :
  gateClosed A ∧ UnboundedFunctionalCalculusEvidence U := by
  exact And.intro (gate_from_admissible_class A) (unbounded_functional_calculus_evidence_checked U)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse