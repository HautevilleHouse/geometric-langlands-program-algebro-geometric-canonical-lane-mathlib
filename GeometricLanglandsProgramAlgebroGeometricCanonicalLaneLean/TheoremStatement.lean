import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure LanglandsAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  smoothProjectiveConnection : Prop
  cohomologyHeckeEigensheaf : Prop
  equivalenceToDualGroup : Prop
  conclusion : equivalenceToDualGroup

def LanglandsWitnessClosed (O : LanglandsAdmittedObject) : Prop :=
  O.equivalenceToDualGroup

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse