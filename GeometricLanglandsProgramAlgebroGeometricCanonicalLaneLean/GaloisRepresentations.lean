import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GaloisRepresentationPackage where
  field : Type
  group : Type
  representation : Type
  continuityCondition : Prop
  frobeniusCompatibility : Prop

structure GaloisRepresentationEvidence (G : GaloisRepresentationPackage) where
  continuityClosed : G.continuityCondition
  frobeniusClosed : G.frobeniusCompatibility

def GaloisRepresentationClosed (G : GaloisRepresentationPackage) : Prop :=
  G.continuityCondition ∧ G.frobeniusCompatibility

theorem galois_representation_closed_from_evidence (G : GaloisRepresentationPackage)
    (E : GaloisRepresentationEvidence G) : GaloisRepresentationClosed G := by
  exact And.intro E.continuityClosed E.frobeniusClosed

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse