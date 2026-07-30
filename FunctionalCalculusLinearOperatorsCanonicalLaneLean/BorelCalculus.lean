import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.SpectralMeasures

/-!
# Borel Functional Calculus Package
This module defines the Borel functional calculus for normal operators.
-/

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure BorelFunctionalCalculus (H : Type*) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] 
  (T : H →L[ℂ] H) (S : SpectralMeasure H) where
  normalOperator : T * dagger T = dagger T * T
  spectralMeasureOfT : SpectralMeasure H
  spectralDecomposition : T = ∫ λ, λ ∂ spectralMeasureOfT
  borelMap : (ℂ → ℂ) → (H →L[ℂ] H)
  functionalCalculusProperties : ∀ (f g : ℂ → ℂ) (a b : ℂ), 
    borelMap (a • f + b • g) = a • borelMap f + b • borelMap g ∧
    borelMap (f * g) = (borelMap f) * (borelMap g) ∧
    borelMap (1 : ℂ → ℂ) = 1 ∧
    borelMap (λ x => x) = T

def BorelFunctionalCalculusClosed (B : BorelFunctionalCalculus H T S) : Prop :=
  B.normalOperator ∧ B.spectralDecomposition

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse