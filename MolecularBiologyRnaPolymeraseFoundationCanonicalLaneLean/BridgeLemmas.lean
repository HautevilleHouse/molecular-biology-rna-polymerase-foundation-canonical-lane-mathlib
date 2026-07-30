import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RNAPolymeraseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse