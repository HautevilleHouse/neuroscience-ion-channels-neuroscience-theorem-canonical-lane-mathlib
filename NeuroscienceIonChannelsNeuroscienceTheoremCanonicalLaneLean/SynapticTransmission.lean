import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure SynapticTransmissionPackage where
  neurotransmitterRelease : Prop
  postsynapticReceptorBinding : Prop
  EPSPAmplitude : ℝ
  IPSPAmplitude : ℝ
  summation : Prop
  plasticity : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  postsynapticReceptorBindingClosed : S.postsynapticReceptorBinding
  EPSPAmplitudeClosed : S.EPSPAmplitude > 0
  IPSPAmplitudeClosed : S.IPSPAmplitude > 0
  summationClosed : S.summation
  plasticityClosed : S.plasticity

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.neurotransmitterRelease ∧ S.postsynapticReceptorBinding ∧ S.EPSPAmplitude > 0 ∧
  S.IPSPAmplitude > 0 ∧ S.summation ∧ S.plasticity

theorem synaptic_transmission_closed_from_evidence
    (S : SynapticTransmissionPackage) (E : SynapticTransmissionEvidence S) :
    SynapticTransmissionClosed S := by
  exact And.intro E.neurotransmitterReleaseClosed
    (And.intro E.postsynapticReceptorBindingClosed
      (And.intro E.EPSPAmplitudeClosed
        (And.intro E.IPSPAmplitudeClosed
          (And.intro E.summationClosed E.plasticityClosed))))

end HautevilleHouse.NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean