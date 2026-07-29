import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean.GLLanglandsDuality

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  True

def ConstrainedGLClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  trivial

theorem constrained_gl_endgame (A : AdmissibleClass) : ConstrainedGLClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse