import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure ElongationPausingTerminationPackage where
  processiveElongation : Prop
  pausingSignals : Prop
  backtracking : Prop
  terminationRecognition : Prop

structure ElongationPausingTerminationEvidence (E : ElongationPausingTerminationPackage) where
  processiveElongationClosed : E.processiveElongation
  pausingSignalsClosed : E.pausingSignals
  backtrackingClosed : E.backtracking
  terminationRecognitionClosed : E.terminationRecognition

def ElongationPausingTerminationClosed (E : ElongationPausingTerminationPackage) : Prop :=
  E.processiveElongation ∧ E.pausingSignals ∧
  E.backtracking ∧ E.terminationRecognition

theorem elongation_pausing_termination_closed_from_evidence
    (E : ElongationPausingTerminationPackage)
    (Ev : ElongationPausingTerminationEvidence E) :
    ElongationPausingTerminationClosed E := by
  exact And.intro Ev.processiveElongationClosed
    (And.intro Ev.pausingSignalsClosed
      (And.intro Ev.backtrackingClosed Ev.terminationRecognitionClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
