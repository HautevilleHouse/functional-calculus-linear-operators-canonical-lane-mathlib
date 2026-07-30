import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.FunctionalCalculusOperator

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

open FunctionalCalculusOperator

structure SpectralTheoremPackage (H : Type u) [InnerProductSpace ℂ H] (F : FunctionalCalculusOperatorPackage H) where
  spectralMeasure : Set ℂ → LinearOperator H
  spectralDecomposition : F.operator = (∫ λ, λ) via spectralMeasure
  projectionValuedMeasure : ∀ (Δ : Set ℂ), (spectralMeasure Δ).action ∘ (λ x => x) = spectralMeasure Δ

def SpectralTheoremEvidence {H : Type u} [InnerProductSpace ℂ H] {F : FunctionalCalculusOperatorPackage H} (S : SpectralTheoremPackage H F) : Prop :=
  S.spectralDecomposition ∧ S.projectionValuedMeasure

theorem spectral_theorem_evidence_checked {H : Type u} [InnerProductSpace ℂ H] {F : FunctionalCalculusOperatorPackage H} (S : SpectralTheoremPackage H F) : SpectralTheoremEvidence S :=
  And.intro S.spectralDecomposition S.projectionValuedMeasure

theorem spectral_theorem_bridge_closed {H : Type u} [InnerProductSpace ℂ H] {F : FunctionalCalculusOperatorPackage H} (S : SpectralTheoremPackage H F) (A : AdmissibleClass) :
  bridgeClosed A ∧ SpectralTheoremEvidence S := by
  exact And.intro (bridge_from_admissible_class A) (spectral_theorem_evidence_checked S)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse