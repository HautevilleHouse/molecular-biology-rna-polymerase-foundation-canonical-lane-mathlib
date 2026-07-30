import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure KineticModelPackage where
  transcriptionRate : ℝ
  degradationRate : ℝ
  steadyStateConcentration : ℝ
  feedbackRegulation : Prop

structure KineticModelEvidence (K : KineticModelPackage) where
  transcriptionRatePos : K.transcriptionRate > 0
  degradationRatePos : K.degradationRate > 0
  steadyStateConcentrationPos : K.steadyStateConcentration ≥ 0
  feedbackRegulationClosed : K.feedbackRegulation

def KineticModelClosed (K : KineticModelPackage) : Prop :=
  K.transcriptionRate > 0 ∧ K.degradationRate > 0 ∧ K.steadyStateConcentration ≥ 0 ∧ K.feedbackRegulation

theorem kinetic_model_closed_from_evidence (K : KineticModelPackage) (E : KineticModelEvidence K) :
    KineticModelClosed K := by
  exact And.intro E.transcriptionRatePos (And.intro E.degradationRatePos (And.intro E.steadyStateConcentrationPos E.feedbackRegulationClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
