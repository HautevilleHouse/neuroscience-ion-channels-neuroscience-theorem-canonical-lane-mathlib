import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : NeuronAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuronChannelClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse