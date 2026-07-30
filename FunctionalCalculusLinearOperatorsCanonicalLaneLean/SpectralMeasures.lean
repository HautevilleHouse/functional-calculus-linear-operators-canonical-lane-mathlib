import canonicalLaneMathlib.AdmissibleClass

/-!
# Spectral Measures Package
This module defines the structure of a spectral measure associated with a normal operator on a Hilbert space.
-/

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure SpectralMeasure (H : Type*) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] where
  measurableSpace : MeasurableSpace ℂ
  projectionValued : Set ℂ → (H →L[ℂ] H)
  sigmaFinite : Prop
  projectionProperty : ∀ (E : Set ℂ), IsMeasurable E → (projectionValued E) ∘ (projectionValued E) = projectionValued E
  orthogonality : ∀ (E F : Set ℂ), IsMeasurable E → IsMeasurable F → Disjoint E F → projectionValued E * projectionValued F = 0
  monotonicity : ∀ (E F : Set ℂ), IsMeasurable E → IsMeasurable F → E ⊆ F → ∀ x : H, ‖(projectionValued E) x‖ ≤ ‖(projectionValued F) x‖
  sigmaAdditivity : ∀ (f : ℕ → Set ℂ), (∀ n, IsMeasurable (f n)) → PairwiseDisjoint f → 
    ∀ x : H, (projectionValued (⋃ n, f n)) x = ∑' n, (projectionValued (f n)) x

def SpectralMeasureClosed (S : SpectralMeasure H) : Prop :=
  S.sigmaFinite ∧ S.projectionProperty ∧ S.orthogonality ∧ S.monotonicity ∧ S.sigmaAdditivity

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse