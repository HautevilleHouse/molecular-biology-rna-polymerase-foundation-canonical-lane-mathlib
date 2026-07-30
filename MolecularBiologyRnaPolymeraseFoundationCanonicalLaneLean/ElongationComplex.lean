import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure ElongationComplexPackage where
  rnaTranscript : Type u
  templateDNA : Type v
  elongationFactors : Type w
  nucleotideIncorporation : Prop
  proofreading : Prop
  pauseRecovery : Prop
  nucleotideIncorporationClosed : nucleotideIncorporation
  proofreadingClosed : proofreading
  pauseRecoveryClosed : pauseRecovery

def ElongationComplexClosed (E : ElongationComplexPackage) : Prop :=
  E.nucleotideIncorporation ∧ E.proofreading ∧ E.pauseRecovery

theorem elongation_complex_closed_from_package (E : ElongationComplexPackage) :
    ElongationComplexClosed E := by
  exact And.intro E.nucleotideIncorporationClosed
    (And.intro E.proofreadingClosed E.pauseRecoveryClosed)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse