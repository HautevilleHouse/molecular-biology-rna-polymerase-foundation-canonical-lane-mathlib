import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure RnaPolymeraseBiochemistryPackage where
  dnaTemplate : Type u
  ntpSubstrates : Type v
  catalyticSite : Type w
  phosphodiesterBondFormation : Prop
  translocationStep : Prop
  proofreadingMechanism : Prop
  terminationSignals : Prop

structure RnaPolymeraseBiochemistryEvidence (B : RnaPolymeraseBiochemistryPackage) where
  phosphodiesterBondFormationClosed : B.phosphodiesterBondFormation
  translocationStepClosed : B.translocationStep
  proofreadingMechanismClosed : B.proofreadingMechanism
  terminationSignalsClosed : B.terminationSignals

def RnaPolymeraseBiochemistryClosed (B : RnaPolymeraseBiochemistryPackage) : Prop :=
  B.phosphodiesterBondFormation ∧ B.translocationStep ∧
  B.proofreadingMechanism ∧ B.terminationSignals

theorem rna_polymerase_biochemistry_closed_from_evidence
    (B : RnaPolymeraseBiochemistryPackage) (E : RnaPolymeraseBiochemistryEvidence B) :
    RnaPolymeraseBiochemistryClosed B := by
  exact And.intro E.phosphodiesterBondFormationClosed
    (And.intro E.translocationStepClosed
      (And.intro E.proofreadingMechanismClosed E.terminationSignalsClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse