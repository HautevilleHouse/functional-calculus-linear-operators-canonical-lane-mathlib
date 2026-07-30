import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure HolomorphicFunctionalCalculusPackage where
  operator : Type u
  spectrum : Type v
  resolventSet : Type w
  analyticCauchyIntegral : Prop
  functionalCalculusDefined : Prop
  spectralMappingHolds : Prop
  analyticCauchyIntegralClosed : analyticCauchyIntegral
  functionalCalculusDefinedClosed : functionalCalculusDefined
  spectralMappingHoldsClosed : spectralMappingHolds

structure HolomorphicFunctionalCalculusEvidence
    (H : HolomorphicFunctionalCalculusPackage) where
  analyticCauchyIntegralClosed : H.analyticCauchyIntegral
  functionalCalculusDefinedClosed : H.functionalCalculusDefined
  spectralMappingHoldsClosed : H.spectralMappingHolds

def HolomorphicFunctionalCalculusClosed
    (H : HolomorphicFunctionalCalculusPackage) : Prop :=
  H.analyticCauchyIntegral ∧ H.functionalCalculusDefined ∧ H.spectralMappingHolds

theorem holomorphic_functional_calculus_closed_from_evidence
    (H : HolomorphicFunctionalCalculusPackage)
    (E : HolomorphicFunctionalCalculusEvidence H) :
    HolomorphicFunctionalCalculusClosed H := by
  exact And.intro E.analyticCauchyIntegralClosed
    (And.intro E.functionalCalculusDefinedClosed E.spectralMappingHoldsClosed)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse