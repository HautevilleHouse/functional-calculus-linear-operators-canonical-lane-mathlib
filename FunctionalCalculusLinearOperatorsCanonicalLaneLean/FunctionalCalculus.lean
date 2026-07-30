import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure FunctionalCalculus (X : Type u) [NormedRing X] [Algebra ℂ X] [CompleteSpace X] where
  operator : X
  functionSpace : Set (ℂ → ℂ)
  calculusMap : (ℂ → ℂ) → X
  spectralMapping : Prop
  homomorphism : Prop
  continuousFunctionalCalculus : Prop

structure FunctionalCalculusEvidence (X : Type u) [NormedRing X] [Algebra ℂ X] [CompleteSpace X]
    (F : FunctionalCalculus X) where
  spectralMappingClosed : F.spectralMapping
  homomorphismClosed : F.homomorphism
  continuousFunctionalCalculusClosed : F.continuousFunctionalCalculus

def FunctionalCalculusClosed (X : Type u) [NormedRing X] [Algebra ℂ X] [CompleteSpace X]
    (F : FunctionalCalculus X) : Prop :=
  F.spectralMapping ∧ F.homomorphism ∧ F.continuousFunctionalCalculus

theorem functional_calculus_closed_from_evidence
    (X : Type u) [NormedRing X] [Algebra ℂ X] [CompleteSpace X]
    (F : FunctionalCalculus X) (E : FunctionalCalculusEvidence F) :
    FunctionalCalculusClosed F := by
  exact And.intro E.spectralMappingClosed
    (And.intro E.homomorphismClosed E.continuousFunctionalCalculusClosed)

end HautevilleHouse
end FunctionalCalculusLinearOperatorsCanonicalLaneLean