import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure TerminationSignalPackage where
  rnaSequence : Type u
  terminationFactor : Type v
  intrinsicTerminatorHairpin : Prop
  rhoDependentTerminator : Prop
  tAllostericRelease : Prop
  intrinsicTerminatorHairpinClosed : intrinsicTerminatorHairpin
  rhoDependentTerminatorClosed : rhoDependentTerminator
  tAllostericReleaseClosed : tAllostericRelease

def TerminationSignalClosed (T : TerminationSignalPackage) : Prop :=
  T.intrinsicTerminatorHairpin ∧ T.rhoDependentTerminator ∧ T.tAllostericRelease

theorem termination_signal_closed_from_package (T : TerminationSignalPackage) :
    TerminationSignalClosed T := by
  exact And.intro T.intrinsicTerminatorHairpinClosed
    (And.intro T.rhoDependentTerminatorClosed T.tAllostericReleaseClosed)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse