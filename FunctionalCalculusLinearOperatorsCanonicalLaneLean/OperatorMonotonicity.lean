import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperators

structure OperatorMonotonicityPackage where
  operatorFamily : Type u
  parameterSet : Set ℝ

structure OperatorMonotonicityEvidence (O : OperatorMonotonicityPackage) where
  monotonicityProperty : Prop

structure OperatorMonotonicityClosed (O : OperatorMonotonicityPackage) : Prop where
  evidence : OperatorMonotonicityEvidence O

theorem operator_monotonicity_closed_from_evidence (O : OperatorMonotonicityPackage) (E : OperatorMonotonicityEvidence O) : OperatorMonotonicityClosed O :=
  OperatorMonotonicityClosed.mk E

end FunctionalCalculusLinearOperators
end HautevilleHouse