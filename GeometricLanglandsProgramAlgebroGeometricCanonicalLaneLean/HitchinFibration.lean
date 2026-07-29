import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean.HeckeStack

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure HitchinFibration {H : HeckeStack} where
  moduliSpace : Type u
  moduliTopology : TopologicalSpace moduliSpace
  HiggsBundle : Type v
  spectralCurve : Type w
  fibrationMap : moduliSpace → H.stack
  properFlat : Prop
  genericSmooth : Prop

structure HitchinFibrationEvidence {H : HeckeStack} (F : HitchinFibration H) where
  properFlatClosed : F.properFlat
  genericSmoothClosed : F.genericSmooth

def HitchinFibrationClosed {H : HeckeStack} (F : HitchinFibration H) : Prop :=
  F.properFlat ∧ F.genericSmooth

theorem hitchin_fibration_closed_from_evidence {H : HeckeStack} (F : HitchinFibration H) (E : HitchinFibrationEvidence F) : HitchinFibrationClosed F := by
  exact And.intro E.properFlatClosed E.genericSmoothClosed

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse
