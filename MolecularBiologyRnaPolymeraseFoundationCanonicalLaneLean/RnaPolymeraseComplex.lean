import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure RnaPolymeraseComplexPackage where
  coreEnzyme : Type u
  holoEnzyme : Type v
  sigmaFactorBinding : Prop
  catalyticActivity : Prop
  processivity : Prop

structure RnaPolymeraseComplexEvidence (R : RnaPolymeraseComplexPackage) where
  sigmaFactorBindingClosed : R.sigmaFactorBinding
  catalyticActivityClosed : R.catalyticActivity
  processivityClosed : R.processivity

def RnaPolymeraseComplexClosed (R : RnaPolymeraseComplexPackage) : Prop :=
  R.sigmaFactorBinding ∧ R.catalyticActivity ∧ R.processivity

theorem rna_polymerase_complex_closed_from_evidence (R : RnaPolymeraseComplexPackage) (E : RnaPolymeraseComplexEvidence R) :
    RnaPolymeraseComplexClosed R := by
  exact And.intro E.sigmaFactorBindingClosed (And.intro E.catalyticActivityClosed E.processivityClosed)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
