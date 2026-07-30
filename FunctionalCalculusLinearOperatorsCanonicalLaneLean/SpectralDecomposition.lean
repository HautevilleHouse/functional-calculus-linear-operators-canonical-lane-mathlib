import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.FunctionalCalculus

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure SpectralDecompositionPackage {Ω : Type}
    (F : FunctionalCalculusPackage Ω) where
  spectralResolutionExists : Prop
  spectralIntegralDefined : Prop
  functionalCalculusCompatible : Prop

structure SpectralDecompositionEvidence {Ω : Type}
    {F : FunctionalCalculusPackage Ω} (S : SpectralDecompositionPackage F) where
  spectralResolutionExistsClosed : S.spectralResolutionExists
  spectralIntegralDefinedClosed : S.spectralIntegralDefined
  functionalCalculusCompatibleClosed : S.functionalCalculusCompatible

def SpectralDecompositionClosed {Ω : Type}
    {F : FunctionalCalculusPackage Ω} (S : SpectralDecompositionPackage F) : Prop :=
  S.spectralResolutionExists ∧ S.spectralIntegralDefined ∧ S.functionalCalculusCompatible

theorem spectral_decomposition_closed_from_evidence
    {Ω : Type} {F : FunctionalCalculusPackage Ω}
    (S : SpectralDecompositionPackage F) (E : SpectralDecompositionEvidence S) :
    SpectralDecompositionClosed S := by
  exact And.intro E.spectralResolutionExistsClosed
    (And.intro E.spectralIntegralDefinedClosed E.functionalCalculusCompatibleClosed)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse