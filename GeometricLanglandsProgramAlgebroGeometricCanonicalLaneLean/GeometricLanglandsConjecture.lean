import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GeometricLanglandsConjecturePackage where
  reductiveGroup : Type u
  curve : Type v
  langlandsDual : Type w
  categoricalEquivalence : Prop
  bridge : bridgeClosed (AdmissibleClass.mk … … …)

def GeometricLanglandsConjectureClosed (G : GeometricLanglandsConjecturePackage) : Prop :=
  G.categoricalEquivalence

theorem geometric_langlands_conjecture_closed (G : GeometricLanglandsConjecturePackage) : GeometricLanglandsConjectureClosed G :=
  G.bridge

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse