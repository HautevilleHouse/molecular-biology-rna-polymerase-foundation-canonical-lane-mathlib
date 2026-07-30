import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure TranscriptionCyclePackage where
  initiationPhase : Prop
  elongationPhase : Prop
  terminationPhase : Prop
  promoterRecognition : Prop
  rnaChainElongation : Prop
  terminationRecognition : Prop

structure TranscriptionCycleEvidence (C : TranscriptionCyclePackage) where
  initiationPhaseClosed : C.initiationPhase
  elongationPhaseClosed : C.elongationPhase
  terminationPhaseClosed : C.terminationPhase
  promoterRecognitionClosed : C.promoterRecognition
  rnaChainElongationClosed : C.rnaChainElongation
  terminationRecognitionClosed : C.terminationRecognition

def TranscriptionCycleClosed (C : TranscriptionCyclePackage) : Prop :=
  C.initiationPhase ∧ C.elongationPhase ∧ C.terminationPhase ∧
  C.promoterRecognition ∧ C.rnaChainElongation ∧ C.terminationRecognition

theorem transcription_cycle_closed_from_evidence
    (C : TranscriptionCyclePackage) (E : TranscriptionCycleEvidence C) :
    TranscriptionCycleClosed C := by
  exact And.intro E.initiationPhaseClosed
    (And.intro E.elongationPhaseClosed
      (And.intro E.terminationPhaseClosed
        (And.intro E.promoterRecognitionClosed
          (And.intro E.rnaChainElongationClosed E.terminationRecognitionClosed))))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse