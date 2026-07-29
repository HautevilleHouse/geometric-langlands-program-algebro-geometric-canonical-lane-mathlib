import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean.HeckeStack

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GeometricSatake {H : HeckeStack} where
  grassmannian : Type u
  perverseSheaves : Type v
  sphericalHecke : Type w
  tensorStructure : Prop
  fusion : Prop
  equivariance : Prop

structure GeometricSatakeEvidence {H : HeckeStack} (S : GeometricSatake H) where
  tensorStructureClosed : S.tensorStructure
  fusionClosed : S.fusion
  equivarianceClosed : S.equivariance

def GeometricSatakeClosed {H : HeckeStack} (S : GeometricSatake H) : Prop :=
  S.tensorStructure ∧ S.fusion ∧ S.equivariance

theorem geometric_satake_closed_from_evidence {H : HeckeStack} (S : GeometricSatake H) (E : GeometricSatakeEvidence S) : GeometricSatakeClosed S := by
  exact And.intro E.tensorStructureClosed (And.intro E.fusionClosed E.equivarianceClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse
