import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean

structure WhittakerSheafPackage where
  unipotentGroup : Type u
  character : Type v
  sheafOnFlag : Type w
  sheafCondition : Prop
  equivariance : Prop
  nondegeneracy : Prop

structure WhittakerSheafEvidence (P : WhittakerSheafPackage) where
  sheafConditionClosed : P.sheafCondition
  equivarianceClosed : P.equivariance
  nondegeneracyClosed : P.nondegeneracy

def WhittakerSheafClosed (P : WhittakerSheafPackage) : Prop :=
  P.sheafCondition ∧ P.equivariance ∧ P.nondegeneracy

theorem whittaker_sheaf_closed_from_evidence (P : WhittakerSheafPackage)
    (E : WhittakerSheafEvidence P) : WhittakerSheafClosed P := by
  exact And.intro E.sheafConditionClosed
    (And.intro E.equivarianceClosed E.nondegeneracyClosed)

end GeometricLanglandsProgramAlgebroGeometricCanonicalLaneLean
end HautevilleHouse