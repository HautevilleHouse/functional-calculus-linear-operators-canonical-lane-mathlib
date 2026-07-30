import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure BorelFunctionalCalculusPackage where
  operator : Type u
  spectralMeasure : Type v
  integrationMap : Type w
  borelFunctionalCalculusDefined : Prop
  essentialSpectrumCarried : Prop
  measureClassAdmissible : Prop
  borelFunctionalCalculusDefinedClosed : borelFunctionalCalculusDefined
  essentialSpectrumCarriedClosed : essentialSpectrumCarried
  measureClassAdmissibleClosed : measureClassAdmissible

structure BorelFunctionalCalculusEvidence
    (B : BorelFunctionalCalculusPackage) where
  borelFunctionalCalculusDefinedClosed : B.borelFunctionalCalculusDefined
  essentialSpectrumCarriedClosed : B.essentialSpectrumCarried
  measureClassAdmissibleClosed : B.measureClassAdmissible

def BorelFunctionalCalculusClosed
    (B : BorelFunctionalCalculusPackage) : Prop :=
  B.borelFunctionalCalculusDefined ∧ B.essentialSpectrumCarried ∧ B.measureClassAdmissible

theorem borel_functional_calculus_closed_from_evidence
    (B : BorelFunctionalCalculusPackage)
    (E : BorelFunctionalCalculusEvidence B) :
    BorelFunctionalCalculusClosed B := by
  exact And.intro E.borelFunctionalCalculusDefinedClosed
    (And.intro E.essentialSpectrumCarriedClosed E.measureClassAdmissibleClosed)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse