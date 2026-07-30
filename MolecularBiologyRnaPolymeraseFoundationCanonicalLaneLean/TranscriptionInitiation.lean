import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure TranscriptionInitiationPackage where
  promoterDNA : Type u
  rnaPolymerase : Type v
  transcriptionFactors : Type w
  closedComplexFormation : Prop
  openComplexFormation : Prop
  initiatedTranscription : Prop

structure TranscriptionInitiationEvidence (T : TranscriptionInitiationPackage) where
  closedComplexFormationClosed : T.closedComplexFormation
  openComplexFormationClosed : T.openComplexFormation
  initiatedTranscriptionClosed : T.initiatedTranscription

def TranscriptionInitiationClosed (T : TranscriptionInitiationPackage) : Prop :=
  T.closedComplexFormation ∧ T.openComplexFormation ∧ T.initiatedTranscription

theorem transcription_initiation_closed_from_evidence (T : TranscriptionInitiationPackage) (E : TranscriptionInitiationEvidence T) :
    TranscriptionInitiationClosed T := by
  exact And.intro E.closedComplexFormationClosed (And.intro E.openComplexFormationClosed E.initiatedTranscriptionClosed)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
