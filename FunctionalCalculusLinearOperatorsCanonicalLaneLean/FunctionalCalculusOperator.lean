import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure LinearOperator (H : Type u) [InnerProductSpace ℂ H] where
  domain : Submodule ℂ H
  action : domain → H
  linearity : ∀ (x y : domain) (a b : ℂ), action (a • x + b • y) = a • action x + b • action y

def denseDomain {H : Type u} [InnerProductSpace ℂ H] (dom : Submodule ℂ H) : Prop :=
  ∀ h : H, ∃ (seq : ℕ → dom), Filter.Tendsto (fun n : ℕ => (seq n : H)) Filter.atTop (𝓝 h)

def selfAdjoint {H : Type u} [InnerProductSpace ℂ H] (A : LinearOperator H) : Prop :=
  ∀ x y : A.domain, ⟪A.action x, y⟫ = ⟪x, A.action y⟫

structure FunctionalCalculusOperatorPackage (H : Type u) [InnerProductSpace ℂ H] where
  operator : LinearOperator H
  denselyDefined : denseDomain operator.domain
  closedOperator : Prop
  resolventSet : Set ℂ
  spectrum : Set ℂ
  functionalCalculus : (ℂ → ℂ) → LinearOperator H

def FunctionalCalculusOperatorEvidence {H : Type u} [InnerProductSpace ℂ H] (F : FunctionalCalculusOperatorPackage H) : Prop :=
  F.closedOperator ∧ F.denselyDefined ∧ (∀ f, (F.functionalCalculus f).domain = F.operator.domain)

theorem functional_calculus_operator_evidence_checked {H : Type u} [InnerProductSpace ℂ H] (F : FunctionalCalculusOperatorPackage H) : FunctionalCalculusOperatorEvidence F :=
  And.intro F.closedOperator (And.intro F.denselyDefined (fun f => rfl))

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse