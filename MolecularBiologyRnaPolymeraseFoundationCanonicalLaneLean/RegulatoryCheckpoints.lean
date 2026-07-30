import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure RegulatoryCheckpointsPackage where
  promoterRecognition : Prop
  elongationCheckpoint : Prop
  terminationCheckpoint : Prop
  qualityControl : Prop

structure RegulatoryCheckpointsEvidence (R : RegulatoryCheckpointsPackage) where
  promoterRecognitionClosed : R.promoterRecognition
  elongationCheckpointClosed : R.elongationCheckpoint
  terminationCheckpointClosed : R.terminationCheckpoint
  qualityControlClosed : R.qualityControl

def RegulatoryCheckpointsClosed (R : RegulatoryCheckpointsPackage) : Prop :=
  R.promoterRecognition ∧ R.elongationCheckpoint ∧ R.terminationCheckpoint ∧ R.qualityControl

theorem regulatory_checkpoints_closed_from_evidence (R : RegulatoryCheckpointsPackage) (E : RegulatoryCheckpointsEvidence R) :
    RegulatoryCheckpointsClosed R := by
  exact And.intro E.promoterRecognitionClosed (And.intro E.elongationCheckpointClosed (And.intro E.terminationCheckpointClosed E.qualityControlClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
