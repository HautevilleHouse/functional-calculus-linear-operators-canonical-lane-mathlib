import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure AdmittedOperator where
  space : Type
  innerProduct : Prop
  domain : Prop
  spectralResolution : Prop
  conclusion : spectralResolution

structure OperatorWitnessClosed (O : AdmittedOperator) : Prop :=
  O.spectralResolution

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse