import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : RNAPolymeraseAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RNAPolymeraseWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse