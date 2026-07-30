import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure TerminationAndPolyadenylationPackage where
  terminationSignal : Prop
  rnaPolymeraseRelease : Prop
  polyaddition : Prop
  polyASignal : Prop
  cleavageOccurs : Prop

structure TerminationAndPolyadenylationEvidence (T : TerminationAndPolyadenylationPackage) where
  terminationSignalClosed : T.terminationSignal
  rnaPolymeraseReleaseClosed : T.rnaPolymeraseRelease
  polyadditionClosed : T.polyaddition
  polyASignalClosed : T.polyASignal
  cleavageOccursClosed : T.cleavageOccurs

def TerminationAndPolyadenylationClosed (T : TerminationAndPolyadenylationPackage) : Prop :=
  T.terminationSignal ∧ T.rnaPolymeraseRelease ∧ T.polyaddition ∧ T.polyASignal ∧ T.cleavageOccurs

theorem termination_and_polyadenylation_closed_from_evidence
    (T : TerminationAndPolyadenylationPackage) (E : TerminationAndPolyadenylationEvidence T) :
    TerminationAndPolyadenylationClosed T := by
  exact And.intro E.terminationSignalClosed
    (And.intro E.rnaPolymeraseReleaseClosed
      (And.intro E.polyadditionClosed
        (And.intro E.polyASignalClosed E.cleavageOccursClosed)))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse