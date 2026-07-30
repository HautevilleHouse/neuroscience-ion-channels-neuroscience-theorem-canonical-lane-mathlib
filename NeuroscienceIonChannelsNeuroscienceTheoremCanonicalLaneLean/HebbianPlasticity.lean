import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure HebbianSynapse where
  presynapticNeuron : String
  postsynapticNeuron : String
  initialWeight : ℝ
  learningRate : ℝ

structure LongTermPotentiationEvidence where
  weightIncrease : Prop
  coincidenceDetection : Prop
  nmdaReceptorDependence : Prop

structure HebbianPlasticityPackage where
  synapse : HebbianSynapse
  evidence : LongTermPotentiationEvidence

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  weightIncreaseClosed : H.evidence.weightIncrease
  coincidenceDetectionClosed : H.evidence.coincidenceDetection
  nmdaReceptorDependenceClosed : H.evidence.nmdaReceptorDependence

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.evidence.weightIncrease ∧ H.evidence.coincidenceDetection ∧ H.evidence.nmdaReceptorDependence

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.weightIncreaseClosed
    (And.intro E.coincidenceDetectionClosed E.nmdaReceptorDependenceClosed)

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
