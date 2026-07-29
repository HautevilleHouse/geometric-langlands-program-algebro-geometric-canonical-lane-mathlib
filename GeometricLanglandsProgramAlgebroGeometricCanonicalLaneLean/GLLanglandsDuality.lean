import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean.GLAutomorphicSheaf

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GLLanglandsDualityPackage {C : GLCurvePackage} {B : GLBundlePackage C} {H : GLHeckeOperatorPackage C B} {S : GLAutomorphicSheafPackage C B H} where
  dualGroup : Type u
  dualBunleClassification : Prop
  spectralCorrespondence : Prop
  functorialityCondition : Prop
  dualBunleClassificationClosed : dualBunleClassification
  spectralCorrespondenceClosed : spectralCorrespondence
  functorialityConditionClosed : functorialityCondition

structure GLLanglandsDualityEvidence {C : GLCurvePackage} {B : GLBundlePackage C} {H : GLHeckeOperatorPackage C B} {S : GLAutomorphicSheafPackage C B H} (D : GLLanglandsDualityPackage C B H S) where
  dualBunleClassificationClosed : D.dualBunleClassification
  spectralCorrespondenceClosed : D.spectralCorrespondence
  functorialityConditionClosed : D.functorialityCondition

def GLLanglandsDualityClosed {C : GLCurvePackage} {B : GLBundlePackage C} {H : GLHeckeOperatorPackage C B} {S : GLAutomorphicSheafPackage C B H} (D : GLLanglandsDualityPackage C B H S) : Prop :=
  D.dualBunleClassification ∧ D.spectralCorrespondence ∧ D.functorialityCondition

theorem gl_langlands_duality_closed_from_evidence {C : GLCurvePackage} {B : GLBundlePackage C} {H : GLHeckeOperatorPackage C B} {S : GLAutomorphicSheafPackage C B H} (D : GLLanglandsDualityPackage C B H S) (E : GLLanglandsDualityEvidence D) : GLLanglandsDualityClosed D :=
  And.intro E.dualBunleClassificationClosed (And.intro E.spectralCorrespondenceClosed E.functorialityConditionClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse