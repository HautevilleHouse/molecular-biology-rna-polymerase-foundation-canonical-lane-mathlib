import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure TranscriptionInitiationPackage where
  promoterRecognition : Prop
  openComplexFormation : Prop
  firstPhosphodiesterBond : Prop
  abortiveInitiation : Prop

structure TranscriptionInitiationEvidence (T : TranscriptionInitiationPackage) where
  promoterRecognitionClosed : T.promoterRecognition
  openComplexFormationClosed : T.openComplexFormation
  firstPhosphodiesterBondClosed : T.firstPhosphodiesterBond
  abortiveInitiationClosed : T.abortiveInitiation

def TranscriptionInitiationClosed (T : TranscriptionInitiationPackage) : Prop :=
  T.promoterRecognition ∧ T.openComplexFormation ∧
  T.firstPhosphodiesterBond ∧ T.abortiveInitiation

theorem transcription_initiation_closed_from_evidence
    (T : TranscriptionInitiationPackage) (E : TranscriptionInitiationEvidence T) :
    TranscriptionInitiationClosed T := by
  exact And.intro E.promoterRecognitionClosed
    (And.intro E.openComplexFormationClosed
      (And.intro E.firstPhosphodiesterBondClosed E.abortiveInitiationClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
