import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure IonChannelGatingPackage where
  membranePotential : Type u
  activationVariable : Type v
  inactivationVariable : Type w
  gatingDynamics : Prop
  voltageDependence : Prop
  steadyStateActivation : Prop
  timeConstantActivation : Prop

structure IonChannelGatingEvidence (G : IonChannelGatingPackage) where
  gatingDynamicsClosed : G.gatingDynamics
  voltageDependenceClosed : G.voltageDependence
  steadyStateActivationClosed : G.steadyStateActivation
  timeConstantActivationClosed : G.timeConstantActivation

def IonChannelGatingClosed (G : IonChannelGatingPackage) : Prop :=
  G.gatingDynamics ∧ G.voltageDependence ∧ G.steadyStateActivation ∧ G.timeConstantActivation

theorem ion_channel_gating_closed_from_evidence (G : IonChannelGatingPackage) (E : IonChannelGatingEvidence G) :
    IonChannelGatingClosed G := by
  exact And.intro E.gatingDynamicsClosed (And.intro E.voltageDependenceClosed (And.intro E.steadyStateActivationClosed E.timeConstantActivationClosed))

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse