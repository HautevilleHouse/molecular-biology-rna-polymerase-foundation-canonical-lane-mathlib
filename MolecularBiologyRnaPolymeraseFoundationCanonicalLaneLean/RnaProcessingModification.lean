import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure RnaProcessingModificationPackage where
  transcriptRNA : Type u
  cappingEnzymes : Type v
  splicingFactors : Type w
  polyadenylationSignal : Prop
  cappingClosed : Prop
  splicingClosed : Prop
  polyadenylationClosed : Prop
  cappingClosedTerm : cappingClosed
  splicingClosedTerm : splicingClosed
  polyadenylationClosedTerm : polyadenylationClosed

def RnaProcessingModificationClosed (R : RnaProcessingModificationPackage) : Prop :=
  R.cappingClosed ∧ R.splicingClosed ∧ R.polyadenylationClosed

theorem rna_processing_modification_closed_from_package (R : RnaProcessingModificationPackage) :
    RnaProcessingModificationClosed R := by
  exact And.intro R.cappingClosedTerm
    (And.intro R.splicingClosedTerm R.polyadenylationClosedTerm)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse