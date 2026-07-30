import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure OperatorAlgebraPackage where
  carrier : Type u
  algebraStructure : Prop
  multiplicationClosed : Prop
  involution : Prop
  normed : Prop

structure OperatorAlgebraEvidence (A : OperatorAlgebraPackage) where
  algebraStructureClosed : A.algebraStructure
  multiplicationClosedClosed : A.multiplicationClosed
  involutionClosed : A.involution
  normedClosed : A.normed

def OperatorAlgebraClosed (A : OperatorAlgebraPackage) : Prop :=
  A.algebraStructure ∧ A.multiplicationClosed ∧ A.involution ∧ A.normed

theorem operator_algebra_closed_from_evidence (A : OperatorAlgebraPackage)
    (E : OperatorAlgebraEvidence A) : OperatorAlgebraClosed A := by
  exact And.intro E.algebraStructureClosed
    (And.intro E.multiplicationClosedClosed
      (And.intro E.involutionClosed E.normedClosed))

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse