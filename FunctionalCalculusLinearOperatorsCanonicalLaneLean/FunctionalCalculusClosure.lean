import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

def ConstrainedFunctionalCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_calculus_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse