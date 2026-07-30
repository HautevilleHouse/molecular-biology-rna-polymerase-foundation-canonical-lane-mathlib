import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure ElongationProofreadingPackage where
  nucleotideIncorparation : Prop
  rnaPolymeraseProcessivity : Prop
  elongationRate : ℝ
  proofreadingMechanism : Prop
  mismatchCorrection : Prop

structure ElongationProofreadingEvidence (E : ElongationProofreadingPackage) where
  nucleotideIncorparationClosed : E.nucleotideIncorparation
  rnaPolymeraseProcessivityClosed : E.rnaPolymeraseProcessivity
  elongationRateClosed : E.elongationRate = E.elongationRate
  proofreadingMechanismClosed : E.proofreadingMechanism
  mismatchCorrectionClosed : E.mismatchCorrection

def ElongationProofreadingClosed (E : ElongationProofreadingPackage) : Prop :=
  E.nucleotideIncorparation ∧ E.rnaPolymeraseProcessivity ∧ (E.elongationRate > 0) ∧ E.proofreadingMechanism ∧ E.mismatchCorrection

theorem elongation_proofreading_closed_from_evidence
    (E : ElongationProofreadingPackage) (Ev : ElongationProofreadingEvidence E) :
    ElongationProofreadingClosed E := by
  refine And.intro Ev.nucleotideIncorparationClosed
    (And.intro Ev.rnaPolymeraseProcessivityClosed
      (And.intro ?_ (And.intro Ev.proofreadingMechanismClosed Ev.mismatchCorrectionClosed)))
  have h : E.elongationRate > 0 := by
    linarith
  exact h

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse