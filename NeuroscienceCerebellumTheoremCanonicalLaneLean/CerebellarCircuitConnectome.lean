import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure CerebellarConnectomePackage where
  purkinjeCell : Type
  granuleCell : Type
  climbingFiber : Type
  parallelFiber : Type
  deepCerebellarNuclei : Type
  circuitTopology : Prop
  feedforwardInhibition : Prop
  recurrentCollaterals : Prop
  connectomeWired : Prop

def CerebellarConnectomeClosed (C : CerebellarConnectomePackage) : Prop :=
  C.circuitTopology ∧ C.feedforwardInhibition ∧ C.recurrentCollaterals ∧ C.connectomeWired

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse