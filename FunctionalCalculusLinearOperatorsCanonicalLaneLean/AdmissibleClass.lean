import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure AdmissibleClass where
  operator : H →L[ℂ] H
  spectralMeasure : SpectralMeasure H
  borelCalculus : BorelFunctionalCalculus H operator spectralMeasure
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse