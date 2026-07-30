import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure NeuroscienceAdmittedObject where
  ionChannel : Type
  conductanceProperties : Prop
  gatingDynamics : Prop
  ligandBinding : Prop
  voltageSensitivity : Prop
  ionChannelClosed : conductanceProperties ∧ gatingDynamics ∧ ligandBinding ∧ voltageSensitivity

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
