import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure SynapticWeight where
  weight : Type u
  changeRule : Prop
  spikeTimingDependence : Prop

structure HebbianPlasticityPackage (S : SynapticWeight) where
  activityPre : Prop
  activityPost : Prop
  correlationBasedUpdate : Prop
  weightBounds : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence {S : SynapticWeight} (H : HebbianPlasticityPackage S) where
  activityPreClosed : H.activityPre
  activityPostClosed : H.activityPost
  correlationBasedUpdateClosed : H.correlationBasedUpdate
  weightBoundsClosed : H.weightBounds
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed {S : SynapticWeight} (H : HebbianPlasticityPackage S) : Prop :=
  H.activityPre ∧ H.activityPost ∧ H.correlationBasedUpdate ∧
  H.weightBounds ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence
    {S : SynapticWeight} (H : HebbianPlasticityPackage S)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.activityPreClosed
    (And.intro E.activityPostClosed
      (And.intro E.correlationBasedUpdateClosed
        (And.intro E.weightBoundsClosed
          (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))))

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
