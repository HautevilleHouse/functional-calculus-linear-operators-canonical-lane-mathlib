import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure ContinuousFunctionalCalculusPackage (A : AdmissibleClass) where
  cStarAlgebra : Prop
  normalElement : Prop
  continuousCalculus : Prop
  functionalCalculusMorphism : Prop

structure ContinuousFunctionalCalculusEvidence (A : AdmissibleClass)
    (C : ContinuousFunctionalCalculusPackage A) where
  cStarAlgebraClosed : C.cStarAlgebra
  normalElementClosed : C.normalElement
  continuousCalculusClosed : C.continuousCalculus
  functionalCalculusMorphismClosed : C.functionalCalculusMorphism

def ContinuousFunctionalCalculusClosed (A : AdmissibleClass)
    (C : ContinuousFunctionalCalculusPackage A) : Prop :=
  C.cStarAlgebra ∧ C.normalElement ∧ C.continuousCalculus ∧ C.functionalCalculusMorphism

theorem continuous_fc_closed_from_evidence (A : AdmissibleClass)
    (C : ContinuousFunctionalCalculusPackage A)
    (E : ContinuousFunctionalCalculusEvidence A C) : ContinuousFunctionalCalculusClosed A C := by
  exact And.intro E.cStarAlgebraClosed
    (And.intro E.normalElementClosed
      (And.intro E.continuousCalculusClosed E.functionalCalculusMorphismClosed))

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse