import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure RnaPolymeraseStructurePackage where
  subunitComposition : Type u
  catalyticCenter : Type v
  clampDomain : Type w
  activeSiteArchitecture : Prop
  rnaExitChannel : Prop
  ntpEntryChannel : Prop
  conformationalStates : Prop

structure RnaPolymeraseStructureEvidence (S : RnaPolymeraseStructurePackage) where
  activeSiteArchitectureClosed : S.activeSiteArchitecture
  rnaExitChannelClosed : S.rnaExitChannel
  ntpEntryChannelClosed : S.ntpEntryChannel
  conformationalStatesClosed : S.conformationalStates

def RnaPolymeraseStructureClosed (S : RnaPolymeraseStructurePackage) : Prop :=
  S.activeSiteArchitecture ∧ S.rnaExitChannel ∧
  S.ntpEntryChannel ∧ S.conformationalStates

theorem rna_polymerase_structure_closed_from_evidence
    (S : RnaPolymeraseStructurePackage) (E : RnaPolymeraseStructureEvidence S) :
    RnaPolymeraseStructureClosed S := by
  exact And.intro E.activeSiteArchitectureClosed
    (And.intro E.rnaExitChannelClosed
      (And.intro E.ntpEntryChannelClosed E.conformationalStatesClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse