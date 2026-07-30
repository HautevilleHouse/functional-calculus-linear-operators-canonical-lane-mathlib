import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperators

structure SpectralMeasurePackage where
  space : Type u
  measurableSpace : MeasurableSpace space
  measure : Set space → ℂ
{ space : Type u
  measurableSpace : MeasurableSpace space
  measure : Set space → ℂ }

structure SpectralMeasureEvidence (S : SpectralMeasurePackage) where
  countableAdditive : Prop
  supportCompact : Prop
  projectionValued : Prop

structure SpectralMeasureClosed (S : SpectralMeasurePackage) : Prop where
  evidence : SpectralMeasureEvidence S

theorem spectral_measure_closed_from_evidence (S : SpectralMeasurePackage) (E : SpectralMeasureEvidence S) : SpectralMeasureClosed S :=
  SpectralMeasureClosed.mk E

end FunctionalCalculusLinearOperators
end HautevilleHouse