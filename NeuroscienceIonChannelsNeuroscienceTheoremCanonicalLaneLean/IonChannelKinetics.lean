import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure IonChannelKineticsPackage where
  channelConductance : ℝ
  openProbability : ℝ
  gatingCharge : ℝ
  voltageDependence : Prop
  timeConstants : Prop
  steadyStateActivation : Prop
  steadyStateInactivation : Prop

structure IonChannelKineticsEvidence (K : IonChannelKineticsPackage) where
  channelConductanceClosed : K.channelConductance > 0
  openProbabilityClosed : K.openProbability ≥ 0 ∧ K.openProbability ≤ 1
  gatingChargeClosed : K.gatingCharge > 0
  voltageDependenceClosed : K.voltageDependence
  timeConstantsClosed : K.timeConstants
  steadyStateActivationClosed : K.steadyStateActivation
  steadyStateInactivationClosed : K.steadyStateInactivation

def IonChannelKineticsClosed (K : IonChannelKineticsPackage) : Prop :=
  K.channelConductance > 0 ∧ (K.openProbability ≥ 0 ∧ K.openProbability ≤ 1) ∧ K.gatingCharge > 0 ∧
  K.voltageDependence ∧ K.timeConstants ∧ K.steadyStateActivation ∧ K.steadyStateInactivation

theorem ion_channel_kinetics_closed_from_evidence
    (K : IonChannelKineticsPackage) (E : IonChannelKineticsEvidence K) :
    IonChannelKineticsClosed K := by
  exact And.intro E.channelConductanceClosed
    (And.intro E.openProbabilityClosed
      (And.intro E.gatingChargeClosed
        (And.intro E.voltageDependenceClosed
          (And.intro E.timeConstantsClosed
            (And.intro E.steadyStateActivationClosed E.steadyStateInactivationClosed)))))

end HautevilleHouse.NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean