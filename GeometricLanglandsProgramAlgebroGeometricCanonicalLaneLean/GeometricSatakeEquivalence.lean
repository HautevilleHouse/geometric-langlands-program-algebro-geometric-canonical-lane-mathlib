import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GeometricSatakePackage where
  affineGrassmannian : Type u
  langlandsDualGroup : Type v
  tensorCategory : Type w
  equivalenceOfCategories : Prop
  fusionProperty : Prop
  centralProperty : Prop

structure GeometricSatakeEvidence (P : GeometricSatakePackage) where
  equivalenceOfCategoriesClosed : P.equivalenceOfCategories
  fusionPropertyClosed : P.fusionProperty
  centralPropertyClosed : P.centralProperty

def GeometricSatakeClosed (P : GeometricSatakePackage) : Prop :=
  P.equivalenceOfCategories ∧ P.fusionProperty ∧ P.centralProperty

theorem geometric_satake_closed_from_evidence (P : GeometricSatakePackage)
    (E : GeometricSatakeEvidence P) : GeometricSatakeClosed P := by
  exact And.intro E.equivalenceOfCategoriesClosed
    (And.intro E.fusionPropertyClosed E.centralPropertyClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse