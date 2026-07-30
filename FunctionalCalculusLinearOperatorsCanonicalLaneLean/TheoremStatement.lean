import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure OperatorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OperatorAdmittedObject where
  space : OperatorSpace
  boundedLinear : Prop
  spectralTheoremHolds : Prop
  functionalCalculusClosed : Prop
  conclusion : spectralTheoremHolds ∧ functionalCalculusClosed

structure OperatorEndgameState where
  object : OperatorAdmittedObject

def OperatorWitnessClosed (O : OperatorAdmittedObject) : Prop :=
  O.spectralTheoremHolds ∧ O.functionalCalculusClosed

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse
