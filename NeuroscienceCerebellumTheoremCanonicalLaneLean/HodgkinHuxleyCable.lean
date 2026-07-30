import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure HodgkinHuxleyCableEquations where
  membraneVoltage : Type u
  sodiumChannel : Type v
  potassiumChannel : Type w
  leakageChannel : Type x
  capacitance : Prop
  sodiumConductance : Prop
  potassiumConductance : Prop
  leakageConductance : Prop
  naiEquation: Prop
  kEquation : Prop
  activationVariables: Prop

def HodgkinHuxleyCableClosed (H : HodgkinHuxleyCableEquations) : Prop :=
  H.capacitance ∧ H.sodiumConductance ∧ H.potassiumConductance ∧ H.leakageConductance ∧
  H.naiEquation ∧ H.kEquation ∧ H.activationVariables

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse