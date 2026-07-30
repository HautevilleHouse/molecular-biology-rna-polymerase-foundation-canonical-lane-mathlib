import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure TerminationMechanismsPackage where
  intrinsicTermination : Prop
  rhoDependentTermination : Prop
  polyASignaling : Prop

structure TerminationMechanismsEvidence (T : TerminationMechanismsPackage) where
  intrinsicTerminationClosed : T.intrinsicTermination
  rhoDependentTerminationClosed : T.rhoDependentTermination
  polyASignalingClosed : T.polyASignaling

def TerminationMechanismsClosed (T : TerminationMechanismsPackage) : Prop :=
  T.intrinsicTermination ∧ T.rhoDependentTermination ∧ T.polyASignaling

theorem termination_mechanisms_closed_from_evidence (T : TerminationMechanismsPackage) (E : TerminationMechanismsEvidence T) :
    TerminationMechanismsClosed T := by
  exact And.intro E.intrinsicTerminationClosed (And.intro E.rhoDependentTerminationClosed E.polyASignalingClosed)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
