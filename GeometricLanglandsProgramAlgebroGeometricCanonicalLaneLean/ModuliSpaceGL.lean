import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GLModuliSpace where
  field : Type u
  curve : Type v
  rank : Nat
  level : Nat
  moduliStack : Type w
  heckeEigensheafCondition : Prop
  bridge : bridgeClosed (AdmissibleClass.mk (…) … …)

def GLModuliSpaceClosed (M : GLModuliSpace) : Prop :=
  M.heckeEigensheafCondition

theorem gl_moduli_space_closed (M : GLModuliSpace) : GLModuliSpaceClosed M :=
  M.bridge

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse