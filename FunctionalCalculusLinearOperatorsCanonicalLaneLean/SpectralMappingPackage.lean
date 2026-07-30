import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure SpectralMappingPackage (A : AdmissibleClass) where
  holomorphicFunctionalCalculus : Prop
  spectralMappingTheorem : Prop
  compositionRule : Prop
  functionalCalculusClosed : Prop

structure SpectralMappingEvidence (A : AdmissibleClass) (P : SpectralMappingPackage A) where
  holomorphicFunctionalCalculusClosed : P.holomorphicFunctionalCalculus
  spectralMappingTheoremClosed : P.spectralMappingTheorem
  compositionRuleClosed : P.compositionRule
  functionalCalculusClosedClosed : P.functionalCalculusClosed

def SpectralMappingClosed (A : AdmissibleClass) (P : SpectralMappingPackage A) : Prop :=
  P.holomorphicFunctionalCalculus ∧ P.spectralMappingTheorem ∧ P.compositionRule ∧ P.functionalCalculusClosed

theorem spectral_mapping_closed_from_evidence (A : AdmissibleClass) (P : SpectralMappingPackage A)
    (E : SpectralMappingEvidence A P) : SpectralMappingClosed A P := by
  exact And.intro E.holomorphicFunctionalCalculusClosed
    (And.intro E.spectralMappingTheoremClosed
      (And.intro E.compositionRuleClosed E.functionalCalculusClosedClosed))

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse