import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure RnaPolymeraseEvolutionPackage where
  ancientRnaWorld : Type u
  rnaWorldReplicase : Type v
  transitionToProtein : Type w
  modernRnapInvention : Prop
  activeSiteConservation : Prop
  multiSubunitEmergence : Prop
  proofreadingEvolution : Prop

structure RnaPolymeraseEvolutionEvidence (E : RnaPolymeraseEvolutionPackage) where
  modernRnapInventionClosed : E.modernRnapInvention
  activeSiteConservationClosed : E.activeSiteConservation
  multiSubunitEmergenceClosed : E.multiSubunitEmergence
  proofreadingEvolutionClosed : E.proofreadingEvolution

def RnaPolymeraseEvolutionClosed (E : RnaPolymeraseEvolutionPackage) : Prop :=
  E.modernRnapInvention ∧ E.activeSiteConservation ∧
  E.multiSubunitEmergence ∧ E.proofreadingEvolution

theorem rna_polymerase_evolution_closed_from_evidence
    (E : RnaPolymeraseEvolutionPackage) (Ev : RnaPolymeraseEvolutionEvidence E) :
    RnaPolymeraseEvolutionClosed E := by
  exact And.intro Ev.modernRnapInventionClosed
    (And.intro Ev.activeSiteConservationClosed
      (And.intro Ev.multiSubunitEmergenceClosed Ev.proofreadingEvolutionClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse