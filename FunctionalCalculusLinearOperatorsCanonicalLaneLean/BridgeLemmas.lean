import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let B := A.borelCalculus
  B.normalOperator ∧ B.spectralDecomposition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine And.intro A.borelCalculus.normalOperator A.borelCalculus.spectralDecomposition

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse