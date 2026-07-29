import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure HeckeStack where
  curve : Type u
  curveTopology : TopologicalSpace curve
  smoothProperCurve : Prop
  stack : Type v
  stackTopology : TopologicalSpace stack
  heckeOperator : Type w
  commutingHecke : Prop
  smoothEquiv : Prop

structure HeckeStackEvidence (H : HeckeStack) where
  smoothProperCurveClosed : H.smoothProperCurve
  commutingHeckeClosed : H.commutingHecke
  smoothEquivClosed : H.smoothEquiv

def HeckeStackClosed (H : HeckeStack) : Prop :=
  H.smoothProperCurve ∧ H.commutingHecke ∧ H.smoothEquiv

theorem hecke_stack_closed_from_evidence (H : HeckeStack) (E : HeckeStackEvidence H) : HeckeStackClosed H := by
  exact And.intro E.smoothProperCurveClosed (And.intro E.commutingHeckeClosed E.smoothEquivClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse
