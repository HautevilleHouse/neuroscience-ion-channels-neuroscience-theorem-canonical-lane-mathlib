import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Float → Float
  sodiumConductance : Float
  potassiumConductance : Float
  leakConductance : Float
  equationsClosed : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  equationsClosedEvidence : H.equationsClosed
  actionPotentialGeneratedEvidence : H.actionPotentialGenerated

theorem hodgkin_huxley_closed (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : H.equationsClosed ∧ H.actionPotentialGenerated := 
  And.intro E.equationsClosedEvidence E.actionPotentialGeneratedEvidence

end NeuroscienceIonChannelsNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse