import canonicalLaneMathlib.AdmissibleClass
import FunctionalCalculusLinearOperatorsCanonicalLaneLean.FunctionalCalculusAdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

def bridgeClosed (A : FunctionalCalculusAdmissibleClass) : Prop :=
  FunctionalCalculusWitnessClosed A.object

theorem bridge_from_admissible_class (A : FunctionalCalculusAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : FunctionalCalculusAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FunctionalCalculusAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedFunctionalCalculusClosure (A : FunctionalCalculusAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_calculus_endgame (A : FunctionalCalculusAdmissibleClass) :
    ConstrainedFunctionalCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse