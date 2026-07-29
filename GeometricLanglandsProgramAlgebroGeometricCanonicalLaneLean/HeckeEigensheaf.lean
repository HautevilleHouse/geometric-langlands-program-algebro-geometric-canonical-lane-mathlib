import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure HeckeEigensheafPackage where
  group : Type u
  representation : Type v
  localSystem : Type w
  eigensheafProperty : Prop
  bridge : bridgeClosed (AdmissibleClass.mk … … …)

def HeckeEigensheafClosed (H : HeckeEigensheafPackage) : Prop :=
  H.eigensheafProperty

theorem hecke_eigensheaf_closed (H : HeckeEigensheafPackage) : HeckeEigensheafClosed H :=
  H.bridge

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse