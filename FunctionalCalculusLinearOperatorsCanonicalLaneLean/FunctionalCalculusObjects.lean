import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure BanachAlgebra where
  carrier : Type u
  norm : carrier → ℝ
  algebraMul : carrier → carrier → carrier
  complete : Prop
  submultiplicative : Prop

structure SpectralData where
  algebra : BanachAlgebra
  element : algebra.carrier
  spectrum : Set ℂ
  spectralRadius : ℝ
  spectralRadiusLeNorm : Prop

structure FunctionalCalculusObject where
  algebra : BanachAlgebra
  element : algebra.carrier
  functionClass : Type v
  functionalCalculus : functionClass → algebra.carrier
  spectralMapping : Prop

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse