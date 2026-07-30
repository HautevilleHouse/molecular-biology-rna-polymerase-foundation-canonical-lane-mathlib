import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean.TranscriptionInitiation
import MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean.ElongationComplex
import MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean.TerminationSignal
import MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean.RnaProcessingModification
import MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean.RegulatoryNetworks

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TranscriptionInitiationClosed (A.object.transcriptionInitiation) ∧
  ElongationComplexClosed (A.object.elongationComplex) ∧
  TerminationSignalClosed (A.object.terminationSignal) ∧
  RnaProcessingModificationClosed (A.object.rnaProcessingModification) ∧
  RegulatoryNetworksClosed (A.object.regulatoryNetworks)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h1 : TranscriptionInitiationClosed (A.object.transcriptionInitiation) :=
    transcription_initiation_closed_from_package (A.object.transcriptionInitiation)
  have h2 : ElongationComplexClosed (A.object.elongationComplex) :=
    elongation_complex_closed_from_package (A.object.elongationComplex)
  have h3 : TerminationSignalClosed (A.object.terminationSignal) :=
    termination_signal_closed_from_package (A.object.terminationSignal)
  have h4 : RnaProcessingModificationClosed (A.object.rnaProcessingModification) :=
    rna_processing_modification_closed_from_package (A.object.rnaProcessingModification)
  have h5 : RegulatoryNetworksClosed (A.object.regulatoryNetworks) :=
    regulatory_networks_closed_from_package (A.object.regulatoryNetworks)
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedRnaPolymeraseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_polymerase_endgame (A : AdmissibleClass) :
    ConstrainedRnaPolymeraseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse