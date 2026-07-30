import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure RegulatoryNetworksPackage where
  transcriptionFactors : Type u
  enhancers : Type v
  silencers : Type w
  chromatinRemodeling : Prop
  geneExpressionControl : Prop
  regulatoryNetworkDynamics : Prop
  chromatinRemodelingClosed : chromatinRemodeling
  geneExpressionControlClosed : geneExpressionControl
  regulatoryNetworkDynamicsClosed : regulatoryNetworkDynamics

def RegulatoryNetworksClosed (R : RegulatoryNetworksPackage) : Prop :=
  R.chromatinRemodeling ∧ R.geneExpressionControl ∧ R.regulatoryNetworkDynamics

theorem regulatory_networks_closed_from_package (R : RegulatoryNetworksPackage) :
    RegulatoryNetworksClosed R := by
  exact And.intro R.chromatinRemodelingClosed
    (And.intro R.geneExpressionControlClosed R.regulatoryNetworkDynamicsClosed)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse