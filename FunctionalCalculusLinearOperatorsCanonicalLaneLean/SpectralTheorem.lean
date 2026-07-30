import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure SpectralTheoremPackage where
  operatorType : Type u
  spectrumDefinition : Prop
  spectralMeasure : Prop
  spectralDecomposition : Prop
  functionalCalculusMap : Prop

structure SpectralTheoremEvidence (S : SpectralTheoremPackage) where
  spectrumDefinitionClosed : S.spectrumDefinition
  spectralMeasureClosed : S.spectralMeasure
  spectralDecompositionClosed : S.spectralDecomposition
  functionalCalculusMapClosed : S.functionalCalculusMap

def SpectralTheoremClosed (S : SpectralTheoremPackage) : Prop :=
  S.spectrumDefinition ∧ S.spectralMeasure ∧ S.spectralDecomposition ∧ S.functionalCalculusMap

theorem spectral_theorem_closed_from_evidence (S : SpectralTheoremPackage)
    (E : SpectralTheoremEvidence S) : SpectralTheoremClosed S := by
  exact And.intro E.spectrumDefinitionClosed
    (And.intro E.spectralMeasureClosed
      (And.intro E.spectralDecompositionClosed E.functionalCalculusMapClosed))

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse