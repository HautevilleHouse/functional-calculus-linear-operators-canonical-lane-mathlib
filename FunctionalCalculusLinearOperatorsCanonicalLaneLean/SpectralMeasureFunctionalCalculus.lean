import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure SpectralRadiiBounds where
  spectralRadiusUpperBound : ℝ
  spectralRadiusLowerBound : ℝ
  boundsConsistent : spectralRadiusUpperBound ≥ spectralRadiusLowerBound

structure SpectralMeasurePackage where
  operator : Type u
  spectralMeasure : Type v
  functionalCalculus : Type w
  spectralRadiusBounds : SpectralRadiiBounds
  functionalCalculusClosed : Prop
  spectralMeasureClosed : Prop
  functionalCalculusClosedTerm : functionalCalculusClosed
  spectralMeasureClosedTerm : spectralMeasureClosed

structure SpectralMeasureEvidence (S : SpectralMeasurePackage) where
  functionalCalculusClosed : S.functionalCalculusClosed
  spectralMeasureClosed : S.spectralMeasureClosed

def SpectralMeasureFunctionalCalculusClosed (S : SpectralMeasurePackage) : Prop :=
  S.functionalCalculusClosed ∧ S.spectralMeasureClosed

theorem spectral_measure_functional_calculus_closed_from_evidence
    (S : SpectralMeasurePackage) (E : SpectralMeasureEvidence S) :
    SpectralMeasureFunctionalCalculusClosed S := by
  exact And.intro E.functionalCalculusClosed E.spectralMeasureClosed

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse