import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure HolomorphicFunctionalCalculusPackage where
  functionSpace : Type u
  holomorphicMap : Prop
  operatorBound : Prop
  cauchyIntegralFormula : Prop
  functionalCalculusClosed : Prop

structure HolomorphicFunctionalCalculusEvidence (H : HolomorphicFunctionalCalculusPackage) where
  holomorphicMapClosed : H.holomorphicMap
  operatorBoundClosed : H.operatorBound
  cauchyIntegralFormulaClosed : H.cauchyIntegralFormula
  functionalCalculusClosedClosed : H.functionalCalculusClosed

def HolomorphicFunctionalCalculusClosed (H : HolomorphicFunctionalCalculusPackage) : Prop :=
  H.holomorphicMap ∧ H.operatorBound ∧ H.cauchyIntegralFormula ∧ H.functionalCalculusClosed

theorem holomorphic_functional_calculus_closed_from_evidence (H : HolomorphicFunctionalCalculusPackage) (E : HolomorphicFunctionalCalculusEvidence H) :
  HolomorphicFunctionalCalculusClosed H := by
  exact And.intro E.holomorphicMapClosed (And.intro E.operatorBoundClosed (And.intro E.cauchyIntegralFormulaClosed E.functionalCalculusClosedClosed))

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse