import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GLWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse