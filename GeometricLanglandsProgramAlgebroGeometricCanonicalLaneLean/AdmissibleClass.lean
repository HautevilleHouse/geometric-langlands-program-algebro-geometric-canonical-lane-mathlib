import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure AdmissibleClass where
  object : GLAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GLWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse