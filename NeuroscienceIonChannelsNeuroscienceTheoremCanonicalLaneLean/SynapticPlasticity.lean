import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure SynapticPlasticityPackage where
  hebbianMechanism : Prop
  stdpWindow : Prop
  ltpInduction : Prop
  ltdInduction : Prop
  calciumDynamics : Prop
  structuralPlasticity : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  hebbianMechanismClosed : S.hebbianMechanism
  stdpWindowClosed : S.stdpWindow
  ltpInductionClosed : S.ltpInduction
  ltdInductionClosed : S.ltdInduction
  calciumDynamicsClosed : S.calciumDynamics
  structuralPlasticityClosed : S.structuralPlasticity

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.hebbianMechanism ∧ S.stdpWindow ∧ S.ltpInduction ∧ S.ltdInduction ∧ S.calciumDynamics ∧ S.structuralPlasticity

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage) (E : SynapticPlasticityEvidence S) :
    SynapticPlasticityClosed S := by
  exact And.intro E.hebbianMechanismClosed (And.intro E.stdpWindowClosed (And.intro E.ltpInductionClosed (And.intro E.ltdInductionClosed (And.intro E.calciumDynamicsClosed E.structuralPlasticityClosed))))

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse