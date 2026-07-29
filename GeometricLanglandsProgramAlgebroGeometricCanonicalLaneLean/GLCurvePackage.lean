import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure GLCurvePackage where
  curve : Type u
  topology : TopologicalSpace curve
  smoothStructure : Prop
  genus : Nat
  punctures : Nat
  shtukaClassification : Prop
  smoothStructureTerm : smoothStructure
  shtukaClassificationTerm : shtukaClassification

structure GLCurveEvidence (C : GLCurvePackage) where
  smoothStructureClosed : C.smoothStructure
  shtukaClassificationClosed : C.shtukaClassification

def GLCurveClosed (C : GLCurvePackage) : Prop :=
  C.smoothStructure ∧ C.shtukaClassification

theorem gl_curve_closed_from_evidence (C : GLCurvePackage) (E : GLCurveEvidence C) : GLCurveClosed C :=
  And.intro E.smoothStructureClosed E.shtukaClassificationClosed

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse