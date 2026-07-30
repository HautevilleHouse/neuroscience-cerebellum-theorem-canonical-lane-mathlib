import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure CerebellumNeuralCircuit where
  purkinjeCellModel : Type u
  granuleCellModel : Type v
  parallelFiberInput : Type w
  climbingFiberInput : Type x
  circuitPlasticity : Prop
  hebbianLearningRule : Prop
  circuitPlasticityTerm : circuitPlasticity
  hebbianLearningRuleTerm : hebbianLearningRule

structure CerebellumNeuralCircuitEvidence (C : CerebellumNeuralCircuit) where
  circuitPlasticityClosed : C.circuitPlasticity
  hebbianLearningRuleClosed : C.hebbianLearningRule

def CerebellumNeuralCircuitClosed (C : CerebellumNeuralCircuit) : Prop :=
  C.circuitPlasticity ∧ C.hebbianLearningRule

theorem cerebellum_neural_circuit_closed_from_evidence
    (C : CerebellumNeuralCircuit) (E : CerebellumNeuralCircuitEvidence C) :
    CerebellumNeuralCircuitClosed C := by
  exact And.intro E.circuitPlasticityClosed E.hebbianLearningRuleClosed

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse