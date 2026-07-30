import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperators

def bridgeClosed (A : FunctionalCalculusAdmissibleClass) : Prop :=
  A.spectralMeasureClosed ∧ A.borelFunctionalCalculusClosed

theorem bridge_from_admissible_class (A : FunctionalCalculusAdmissibleClass) : bridgeClosed A :=
  And.intro A.spectralMeasureClosed A.borelFunctionalCalculusClosed

end FunctionalCalculusLinearOperators
end HautevilleHouse