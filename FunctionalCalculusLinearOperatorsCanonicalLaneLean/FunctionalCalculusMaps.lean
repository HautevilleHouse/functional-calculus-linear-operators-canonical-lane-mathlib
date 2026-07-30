import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.BorelCalculus

/-!
# Functional Calculus Maps Package
This module defines the functional calculus for continuous and holomorphic functions.
-/

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure ContinuousFunctionalCalculus (H : Type*) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] 
  (T : H →L[ℂ] H) (B : BorelFunctionalCalculus H T S) where
  continuousFunctions : Subalgebra ℂ (ℂ → ℂ)
  restriction : (continuousFunctions : Type) → (H →L[ℂ] H)
  isometry : ∀ f ∈ continuousFunctions, ‖restriction f‖ = ‖f‖_∞
  spectralMapping : ∀ f ∈ continuousFunctions, σ (restriction f) = f '' σ(T)

def ContinuousFunctionalCalculusClosed (C : ContinuousFunctionalCalculus H T B) : Prop :=
  C.isometry ∧ C.spectralMapping

structure HolomorphicFunctionalCalculus (H : Type*) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] 
  (T : H →L[ℂ] H) (B : BorelFunctionalCalculus H T S) where
  holomorphicFunctions : Subalgebra ℂ (ℂ → ℂ)
  cauchyIntegral : (ℂ → ℂ) → (H →L[ℂ] H)
  cauchyFormula : ∀ f : ℂ → ℂ, HolomorphicOn f (ball 0 ‖T‖) → 
    (1/(2π*I)) * ∫_{γ} f(ζ) * (ζ - T)⁻¹ dζ = B.borelMap f

def HolomorphicFunctionalCalculusClosed (H : HolomorphicFunctionalCalculus H T B) : Prop :=
  H.cauchyFormula

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse