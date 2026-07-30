import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure TranscriptionInitiationPackage where
  dnaTemplate : Type u
  rnaPrimer : Type v
  rnaPolymeraseBindingSite : Prop
  promoterRecognition : Prop
  initiationReady : Prop
  firstPhosphodiesterBond : Prop

structure TranscriptionInitiationEvidence (T : TranscriptionInitiationPackage) where
  dnaTemplateClosed : T.dnaTemplate
  rnaPrimerClosed : T.rnaPrimer
  rnaPolymeraseBindingSiteClosed : T.rnaPolymeraseBindingSite
  promoterRecognitionClosed : T.promoterRecognition
  initiationReadyClosed : T.initiationReady
  firstPhosphodiesterBondClosed : T.firstPhosphodiesterBond

def TranscriptionInitiationClosed (T : TranscriptionInitiationPackage) : Prop :=
  T.dnaTemplate ∧ T.rnaPrimer ∧ T.rnaPolymeraseBindingSite ∧ T.promoterRecognition ∧ T.initiationReady ∧ T.firstPhosphodiesterBond

theorem transcription_initiation_closed_from_evidence
    (T : TranscriptionInitiationPackage) (E : TranscriptionInitiationEvidence T) :
    TranscriptionInitiationClosed T := by
  exact And.intro E.dnaTemplateClosed
    (And.intro E.rnaPrimerClosed
      (And.intro E.rnaPolymeraseBindingSiteClosed
        (And.intro E.promoterRecognitionClosed
          (And.intro E.initiationReadyClosed
            E.firstPhosphodiesterBondClosed))))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse