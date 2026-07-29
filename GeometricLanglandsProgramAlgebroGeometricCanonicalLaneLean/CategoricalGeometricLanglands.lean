import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure CategoricalGeometricLanglandsPackage where
  categoryOfSheaves : Type u
  derivedCategory : Type v
  equivalence : Prop
  functorConstructed : Prop
  fullyFaithful : Prop
  essentiallySurjective : Prop

structure CategoricalGeometricLanglandsEvidence (P : CategoricalGeometricLanglandsPackage) where
  functorConstructedClosed : P.functorConstructed
  fullyFaithfulClosed : P.fullyFaithful
  essentiallySurjectiveClosed : P.essentiallySurjective

def CategoricalGeometricLanglandsClosed (P : CategoricalGeometricLanglandsPackage) : Prop :=
  P.functorConstructed ∧ P.fullyFaithful ∧ P.essentiallySurjective

theorem categorical_geometric_langlands_closed_from_evidence
    (P : CategoricalGeometricLanglandsPackage)
    (E : CategoricalGeometricLanglandsEvidence P) :
    CategoricalGeometricLanglandsClosed P := by
  exact And.intro E.functorConstructedClosed
    (And.intro E.fullyFaithfulClosed E.essentiallySurjectiveClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse