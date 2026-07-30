import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.BorelCalculus

/-!
# Spectral Mapping Theorem Package
This module defines the spectral mapping theorem for the functional calculus.
-/

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure SpectralMappingTheorem (H : Type*) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] 
  (T : H →L[ℂ] H) (B : BorelFunctionalCalculus H T S) where
  normalOperator : Prop
  spectralMappingProperty : ∀ (f : ℂ → ℂ) (BorelMeasurable f), σ (B.borelMap f) = f '' σ(T)
  polynomialMapping : ∀ (p : Polynomial ℂ), B.borelMap (fun x => p.eval x) = Polynomial.aeval T p

def SpectralMappingTheoremClosed (S : SpectralMappingTheorem H T B) : Prop :=
  S.normalOperator ∧ S.spectralMappingProperty ∧ S.polynomialMapping

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse