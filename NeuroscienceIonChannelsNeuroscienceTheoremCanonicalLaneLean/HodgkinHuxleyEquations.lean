import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure IonChannelDynamics where
  membranePotential : Type u
  gatingVariables : Type v
  ionCurrents : Prop
  rateConstants : Prop
  conductanceVoltageRelationship : Prop

structure HodgkinHuxleyEquationsPackage (D : IonChannelDynamics) where
  timeDomain : Type u
  capacitance : Prop
  leakageCurrent : Prop
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  differentialEquations : Prop
  initialConditions : Prop

structure HodgkinHuxleyEquationsEvidence {D : IonChannelDynamics} (H : HodgkinHuxleyEquationsPackage D) where
  capacitanceClosed : H.capacitance
  leakageCurrentClosed : H.leakageCurrent
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  differentialEquationsClosed : H.differentialEquations
  initialConditionsClosed : H.initialConditions

def HodgkinHuxleyEquationsClosed {D : IonChannelDynamics} (H : HodgkinHuxleyEquationsPackage D) : Prop :=
  H.capacitance ∧ H.leakageCurrent ∧ H.sodiumCurrent ∧ H.potassiumCurrent ∧
  H.differentialEquations ∧ H.initialConditions

theorem hodgkin_huxley_equations_closed_from_evidence
    {D : IonChannelDynamics} (H : HodgkinHuxleyEquationsPackage D)
    (E : HodgkinHuxleyEquationsEvidence H) : HodgkinHuxleyEquationsClosed H := by
  exact And.intro E.capacitanceClosed
    (And.intro E.leakageCurrentClosed
      (And.intro E.sodiumCurrentClosed
        (And.intro E.potassiumCurrentClosed
          (And.intro E.differentialEquationsClosed E.initialConditionsClosed))))

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
