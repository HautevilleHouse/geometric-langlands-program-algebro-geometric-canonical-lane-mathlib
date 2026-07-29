import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GaloisAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  galoisRepresentation : Type
  frobeniusWeilDefined : Prop
  conclusion : frobeniusWeilDefined

structure GaloisEndgameState where
  object : GaloisAdmittedObject

def GaloisWitnessClosed (O : GaloisAdmittedObject) : Prop :=
  O.frobeniusWeilDefined

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse