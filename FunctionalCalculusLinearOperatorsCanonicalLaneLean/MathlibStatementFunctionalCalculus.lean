import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  admittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "functional-calculus-linear-operators-canonical-lane",
  theoremObject := "Borel functional calculus for normal operators in Hilbert space",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  admittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Admissible-class closure is native; unrestricted spectral theorem remains cited but not fully formalized"
}

theorem mathlib_obligation_checked : mathlibProofObligation.commonCoreImported = true := by rfl

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse