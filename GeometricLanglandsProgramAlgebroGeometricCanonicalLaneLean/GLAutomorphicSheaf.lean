import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean.GLHeckeOperator

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GLAutomorphicSheafPackage {C : GLCurvePackage} {B : GLBundlePackage C} {H : GLHeckeOperatorPackage C B} where
  sheafType : Type u
  holonomicDModule : Prop
  HeckeEigenproperty : Prop
  localSystemCondition : Prop
  holonomicDModuleClosed : holonomicDModule
  HeckeEigenpropertyClosed : HeckeEigenproperty
  localSystemConditionClosed : localSystemCondition

structure GLAutomorphicSheafEvidence {C : GLCurvePackage} {B : GLBundlePackage C} {H : GLHeckeOperatorPackage C B} (S : GLAutomorphicSheafPackage C B H) where
  holonomicDModuleClosed : S.holonomicDModule
  HeckeEigenpropertyClosed : S.HeckeEigenproperty
  localSystemConditionClosed : S.localSystemCondition

def GLAutomorphicSheafClosed {C : GLCurvePackage} {B : GLBundlePackage C} {H : GLHeckeOperatorPackage C B} (S : GLAutomorphicSheafPackage C B H) : Prop :=
  S.holonomicDModule ∧ S.HeckeEigenproperty ∧ S.localSystemCondition

theorem gl_automorphic_sheaf_closed_from_evidence {C : GLCurvePackage} {B : GLBundlePackage C} {H : GLHeckeOperatorPackage C B} (S : GLAutomorphicSheafPackage C B H) (E : GLAutomorphicSheafEvidence S) : GLAutomorphicSheafClosed S :=
  And.intro E.holonomicDModuleClosed (And.intro E.HeckeEigenpropertyClosed E.localSystemConditionClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse