import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean.GLCurvePackage

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GLBundlePackage {C : GLCurvePackage} where
  fiber : Type u
  structureGroup : Type v
  transitionFunctions : Prop
  gaugeGroupAction : Prop
  flatConnection : Prop
  transitionFunctionsClosed : transitionFunctions
  gaugeGroupActionClosed : gaugeGroupAction
  flatConnectionClosed : flatConnection

structure GLBundleEvidence {C : GLCurvePackage} (B : GLBundlePackage C) where
  transitionFunctionsClosed : B.transitionFunctions
  gaugeGroupActionClosed : B.gaugeGroupAction
  flatConnectionClosed : B.flatConnection

def GLBundleClosed {C : GLCurvePackage} (B : GLBundlePackage C) : Prop :=
  B.transitionFunctions ∧ B.gaugeGroupAction ∧ B.flatConnection

theorem gl_bundle_closed_from_evidence {C : GLCurvePackage} (B : GLBundlePackage C) (E : GLBundleEvidence B) : GLBundleClosed B :=
  And.intro E.transitionFunctionsClosed (And.intro E.gaugeGroupActionClosed E.flatConnectionClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse