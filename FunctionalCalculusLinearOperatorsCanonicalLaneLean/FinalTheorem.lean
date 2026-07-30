import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.FunctionalCalculusLinearOperatorsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

def ConstrainedFunctionalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_endgame (A : AdmissibleClass) : ConstrainedFunctionalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse