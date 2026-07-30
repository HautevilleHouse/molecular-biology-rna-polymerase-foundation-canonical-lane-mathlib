import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean

structure ElongationDynamicsPackage where
  elongationRate : ℝ
  pauseProbability : ℝ
  backtrackingRate : ℝ
  terminationSignal : Prop

structure ElongationDynamicsEvidence (E : ElongationDynamicsPackage) where
  elongationRatePos : E.elongationRate > 0
  pauseProbabilityInUnit : 0 ≤ E.pauseProbability ∧ E.pauseProbability ≤ 1
  backtrackingRatePos : E.backtrackingRate > 0
  terminationSignalClosed : E.terminationSignal

def ElongationDynamicsClosed (E : ElongationDynamicsPackage) : Prop :=
  E.elongationRate > 0 ∧ (0 ≤ E.pauseProbability ∧ E.pauseProbability ≤ 1) ∧ E.backtrackingRate > 0 ∧ E.terminationSignal

theorem elongation_dynamics_closed_from_evidence (E : ElongationDynamicsPackage) (Ev : ElongationDynamicsEvidence E) :
    ElongationDynamicsClosed E := by
  exact And.intro Ev.elongationRatePos (And.intro Ev.pauseProbabilityInUnit (And.intro Ev.backtrackingRatePos Ev.terminationSignalClosed))

end MolecularBiologyRnaPolymeraseFoundationCanonicalLaneLean
end HautevilleHouse
