import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean.GLBundlePackage

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GLHeckeOperatorPackage {C : GLCurvePackage} {B : GLBundlePackage C} where
  point : C.curve
  modificationType : Prop
  integralKernel : Prop
  eigenvalueEquation : Prop
  integralKernelClosed : integralKernel
  eigenvalueEquationClosed : eigenvalueEquation

structure GLHeckeOperatorEvidence {C : GLCurvePackage} {B : GLBundlePackage C} (H : GLHeckeOperatorPackage C B) where
  integralKernelClosed : H.integralKernel
  eigenvalueEquationClosed : H.eigenvalueEquation

def GLHeckeOperatorClosed {C : GLCurvePackage} {B : GLBundlePackage C} (H : GLHeckeOperatorPackage C B) : Prop :=
  H.integralKernel ∧ H.eigenvalueEquation

theorem gl_hecke_operator_closed_from_evidence {C : GLCurvePackage} {B : GLBundlePackage C} (H : GLHeckeOperatorPackage C B) (E : GLHeckeOperatorEvidence H) : GLHeckeOperatorClosed H :=
  And.intro E.integralKernelClosed E.eigenvalueEquationClosed

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse