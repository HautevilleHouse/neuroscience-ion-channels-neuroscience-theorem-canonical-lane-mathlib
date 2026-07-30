import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure NeuralFieldKernel where
  spatialWeight : Type u
  temporalDependence : Prop
  connectivityProfile : Prop
  synapticTimescale : Prop

structure ContinuumNeuralFieldEquations (K : NeuralFieldKernel) where
  fieldVariable : Type u
  firingRateFunction : Type v
  integroDifferentialEquation : Prop
  externalInput : Prop
  boundaryConditions : Prop

structure ContinuumNeuralFieldEvidence {K : NeuralFieldKernel} (F : ContinuumNeuralFieldEquations K) where
  integroDifferentialEquationClosed : F.integroDifferentialEquation
  externalInputClosed : F.externalInput
  boundaryConditionsClosed : F.boundaryConditions

def ContinuumNeuralFieldClosed {K : NeuralFieldKernel} (F : ContinuumNeuralFieldEquations K) : Prop :=
  F.integroDifferentialEquation ∧ F.externalInput ∧ F.boundaryConditions

theorem continuum_neural_field_closed_from_evidence
    {K : NeuralFieldKernel} (F : ContinuumNeuralFieldEquations K)
    (E : ContinuumNeuralFieldEvidence F) : ContinuumNeuralFieldClosed F := by
  exact And.intro E.integroDifferentialEquationClosed
    (And.intro E.externalInputClosed E.boundaryConditionsClosed)

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
