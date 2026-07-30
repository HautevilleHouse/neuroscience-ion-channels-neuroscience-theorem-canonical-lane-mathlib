import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure ActionPotential where
  thresholdPotential : ℝ
  depolarizationPhase : ℝ → ℝ
  repolarizationPhase : ℝ → ℝ
  refractoryPeriod : ℝ
  propagationVelocity : ℝ
  apClosed : Prop

def ActionPotentialEvidence (A : ActionPotential) : Prop :=
  A.apClosed

theorem action_potential_valid (A : ActionPotential) (E : ActionPotentialEvidence A) : A.apClosed := E

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse