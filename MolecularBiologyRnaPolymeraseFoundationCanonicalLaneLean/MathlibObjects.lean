import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Group.Defs
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RNAPolymeraseComplex where
  canonicalSubunits : Nat
  rnapStructure : Type
  rnapStructureTopology : TopologicalSpace rnapStructure
  dnaBindingMutations : Prop
  rnaSynthesisReaction : Prop
  promoterRecognition : Prop
  elongationState : Prop
  terminationState : Prop
  regulationInput : Prop

def rnaPolymeraseComplexDefault : RNAPolymeraseComplex :=
  { canonicalSubunits := 5,
    rnapStructure := Unit,
    rnapStructureTopology := inferInstance,
    dnaBindingMutations := True,
    rnaSynthesisReaction := True,
    promoterRecognition := True,
    elongationState := True,
    terminationState := True,
    regulationInput := True
  }

structure RNAPolymeraseAdmittedObject where
  complex : RNAPolymeraseComplex
  closedState : Prop
  activeState : Prop
  rnapFunctional : Prop
  conclusion : rnapFunctional

structure RNAPolymeraseEndgameState where
  object : RNAPolymeraseAdmittedObject

def RNAPolymeraseWitnessClosed (O : RNAPolymeraseAdmittedObject) : Prop :=
  O.rnapFunctional

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse