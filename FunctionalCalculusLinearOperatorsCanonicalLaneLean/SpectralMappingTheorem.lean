import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperators

structure SpectralMappingPackage where
  operator : Type u
  spectralMeasure : SpectralMeasurePackage
  function : Type v
  imageSet : Set ℂ

structure SpectralMappingEvidence (S : SpectralMappingPackage) where
  mappingStatement : Prop

structure SpectralMappingClosed (S : SpectralMappingPackage) : Prop where
  evidence : SpectralMappingEvidence S

theorem spectral_mapping_closed_from_evidence (S : SpectralMappingPackage) (E : SpectralMappingEvidence S) : SpectralMappingClosed S :=
  SpectralMappingClosed.mk E

end FunctionalCalculusLinearOperators
end HautevilleHouse