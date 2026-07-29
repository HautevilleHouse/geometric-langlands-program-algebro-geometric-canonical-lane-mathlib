import geometric-langlands-program-algebro-geometric-canonical-lane-lean.HeckeEigensheaves

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure HitchinModuliPackage (H : HeckeEigensheafPackage) where
  integrableSystem : Prop
  spectralCurve : Prop
  mirrorSymmetry : Prop
  langlandsDuality : Prop

structure HitchinModuliEvidence {H : HeckeEigensheafPackage} (M : HitchinModuliPackage H) where
  integrableSystemClosed : M.integrableSystem
  spectralCurveClosed : M.spectralCurve
  mirrorSymmetryClosed : M.mirrorSymmetry
  langlandsDualityClosed : M.langlandsDuality

def HitchinModuliClosed {H : HeckeEigensheafPackage} (M : HitchinModuliPackage H) : Prop :=
  M.integrableSystem ∧ M.spectralCurve ∧ M.mirrorSymmetry ∧ M.langlandsDuality

theorem hitchin_moduli_closed_from_evidence {H : HeckeEigensheafPackage} (M : HitchinModuliPackage H) (E : HitchinModuliEvidence M) : HitchinModuliClosed M := by
  exact And.intro E.integrableSystemClosed (And.intro E.spectralCurveClosed (And.intro E.mirrorSymmetryClosed E.langlandsDualityClosed))

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse
