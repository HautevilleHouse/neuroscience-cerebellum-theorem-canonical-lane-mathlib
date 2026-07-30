import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

/-! Cerebellum Circuit Model Package -/

structure CerebellumCircuitModelPackage where
  granuleCellLayer : Prop
  purkinjeCellIntegration : Prop
  climbingFibreInput : Prop
  parallelFibreSynapticPlasticity : Prop

structure CerebellumCircuitModelEvidence (C : CerebellumCircuitModelPackage) where
  granuleCellLayerClosed : C.granuleCellLayer
  purkinjeCellIntegrationClosed : C.purkinjeCellIntegration
  climbingFibreInputClosed : C.climbingFibreInput
  parallelFibreSynapticPlasticityClosed : C.parallelFibreSynapticPlasticity

def CerebellumCircuitModelClosed (C : CerebellumCircuitModelPackage) : Prop :=
  C.granuleCellLayer ∧ C.purkinjeCellIntegration ∧ C.climbingFibreInput ∧ C.parallelFibreSynapticPlasticity

theorem cerebellum_circuit_model_closed_from_evidence (C : CerebellumCircuitModelPackage) (E : CerebellumCircuitModelEvidence C) :
    CerebellumCircuitModelClosed C := by
  exact And.intro E.granuleCellLayerClosed
    (And.intro E.purkinjeCellIntegrationClosed
      (And.intro E.climbingFibreInputClosed E.parallelFibreSynapticPlasticityClosed))

end HautevilleHouse
end NeuroscienceCerebellumTheoremCanonicalLaneLean