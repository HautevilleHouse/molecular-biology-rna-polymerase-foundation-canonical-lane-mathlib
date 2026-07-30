import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure RegulatoryMechanismsPackage where
  sigmaFactorSwitching : Prop
  transcriptionFactorBinding : Prop
  chromatinRemodeling : Prop
  attenuationRiboswitches : Prop

structure RegulatoryMechanismsEvidence (R : RegulatoryMechanismsPackage) where
  sigmaFactorSwitchingClosed : R.sigmaFactorSwitching
  transcriptionFactorBindingClosed : R.transcriptionFactorBinding
  chromatinRemodelingClosed : R.chromatinRemodeling
  attenuationRiboswitchesClosed : R.attenuationRiboswitches

def RegulatoryMechanismsClosed (R : RegulatoryMechanismsPackage) : Prop :=
  R.sigmaFactorSwitching ∧ R.transcriptionFactorBinding ∧
  R.chromatinRemodeling ∧ R.attenuationRiboswitches

theorem regulatory_mechanisms_closed_from_evidence
    (R : RegulatoryMechanismsPackage) (E : RegulatoryMechanismsEvidence R) :
    RegulatoryMechanismsClosed R := by
  exact And.intro E.sigmaFactorSwitchingClosed
    (And.intro E.transcriptionFactorBindingClosed
      (And.intro E.chromatinRemodelingClosed E.attenuationRiboswitchesClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
