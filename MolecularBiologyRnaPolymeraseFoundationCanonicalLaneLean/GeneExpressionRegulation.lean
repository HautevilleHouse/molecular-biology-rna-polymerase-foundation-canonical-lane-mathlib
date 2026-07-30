import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  transcriptionFactors : Type u
  enhancersSilencers : Type v
  dnaAccessibility : Type w
  promoterActivation : Prop
  elongationControl : Prop
  terminationModulation : Prop
  rnaProcessing : Prop

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  promoterActivationClosed : G.promoterActivation
  elongationControlClosed : G.elongationControl
  terminationModulationClosed : G.terminationModulation
  rnaProcessingClosed : G.rnaProcessing

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.promoterActivation ∧ G.elongationControl ∧
  G.terminationModulation ∧ G.rnaProcessing

theorem gene_expression_regulation_closed_from_evidence
    (G : GeneExpressionRegulationPackage) (E : GeneExpressionRegulationEvidence G) :
    GeneExpressionRegulationClosed G := by
  exact And.intro E.promoterActivationClosed
    (And.intro E.elongationControlClosed
      (And.intro E.terminationModulationClosed E.rnaProcessingClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse