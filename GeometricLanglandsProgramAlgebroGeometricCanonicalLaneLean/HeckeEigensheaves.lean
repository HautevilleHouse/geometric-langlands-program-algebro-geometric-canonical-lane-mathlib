import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure HeckeEigensheafPackage where
  reductiveGroup : Type u
  curve : Type v
  localSystem : Type w
  sheafCondition : Prop
  heckeAction : Prop
  eigensheafProperty : Prop

structure HeckeEigensheafEvidence (P : HeckeEigensheafPackage) where
  sheafConditionClosed : P.sheafCondition
  heckeActionClosed : P.heckeAction
  eigensheafPropertyClosed : P.eigensheafProperty

def HeckeEigensheafClosed (P : HeckeEigensheafPackage) : Prop :=
  P.sheafCondition ∧ P.heckeAction ∧ P.eigensheafProperty

theorem hecke_eigensheaf_closed_from_evidence (P : HeckeEigensheafPackage)
    (E : HeckeEigensheafEvidence P) : HeckeEigensheafClosed P := by
  exact And.intro E.sheafConditionClosed
    (And.intro E.heckeActionClosed E.eigensheafPropertyClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse