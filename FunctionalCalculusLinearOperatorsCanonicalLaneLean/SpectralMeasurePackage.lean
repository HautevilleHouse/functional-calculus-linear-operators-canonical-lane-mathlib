import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusLinearOperatorsCanonicalLaneLean

structure SpectralMeasurePackage (A : AdmissibleClass) where
  measure : Type u
  set : Type v
  projectionValued : Prop
  measurableSets : Prop
  countableAdditivity : Prop
  projectionValuedClosed : projectionValued
  measurableSetsClosed : measurableSets
  countableAdditivityClosed : countableAdditivity

structure SpectralMeasureEvidence {A : AdmissibleClass} (S : SpectralMeasurePackage A) where
  projectionValuedClosed : S.projectionValued
  measurableSetsClosed : S.measurableSets
  countableAdditivityClosed : S.countableAdditivity

def SpectralMeasureClosed {A : AdmissibleClass} (S : SpectralMeasurePackage A) : Prop :=
  S.projectionValued ∧ S.measurableSets ∧ S.countableAdditivity

theorem spectral_measure_closed_from_evidence {A : AdmissibleClass} (S : SpectralMeasurePackage A) (E : SpectralMeasureEvidence S) : SpectralMeasureClosed S := by
  exact And.intro E.projectionValuedClosed (And.intro E.measurableSetsClosed E.countableAdditivityClosed)

end FunctionalCalculusLinearOperatorsCanonicalLaneLean
end HautevilleHouse