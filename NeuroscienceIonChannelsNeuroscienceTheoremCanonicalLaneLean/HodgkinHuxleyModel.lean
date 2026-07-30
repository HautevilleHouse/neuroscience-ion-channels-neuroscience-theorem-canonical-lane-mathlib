import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyModelPackage (G : IonChannelGatingPackage) where
  sodiumChannel : G.activationVariable
  potassiumChannel : G.activationVariable
  leakageChannel : Prop
  membraneCapacitance : Prop
  ionicCurrents : Prop
  actionPotentialGeneration : Prop
  parameterSet : Prop

structure HodgkinHuxleyModelEvidence {G : IonChannelGatingPackage} (M : HodgkinHuxleyModelPackage G) where
  sodiumChannelClosed : M.sodiumChannel = M.sodiumChannel
  potassiumChannelClosed : M.potassiumChannel = M.potassiumChannel
  leakageChannelClosed : M.leakageChannel
  membraneCapacitanceClosed : M.membraneCapacitance
  ionicCurrentsClosed : M.ionicCurrents
  actionPotentialGenerationClosed : M.actionPotentialGeneration
  parameterSetClosed : M.parameterSet

def HodgkinHuxleyModelClosed {G : IonChannelGatingPackage} (M : HodgkinHuxleyModelPackage G) : Prop :=
  M.leakageChannel ∧ M.membraneCapacitance ∧ M.ionicCurrents ∧ M.actionPotentialGeneration ∧ M.parameterSet

theorem hodgkin_huxley_model_closed_from_evidence {G : IonChannelGatingPackage} (M : HodgkinHuxleyModelPackage G) (E : HodgkinHuxleyModelEvidence M) :
    HodgkinHuxleyModelClosed M := by
  exact And.intro E.leakageChannelClosed (And.intro E.membraneCapacitanceClosed (And.intro E.ionicCurrentsClosed (And.intro E.actionPotentialGenerationClosed E.parameterSetClosed)))

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse