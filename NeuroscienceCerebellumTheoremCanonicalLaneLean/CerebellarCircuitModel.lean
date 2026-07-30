import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure CerebellarCircuitModelPackage where
  neuronPopulation : Type u
  synapse : Type v
  networkTopology : Type w
  granularLayer : Prop
  purkinjeCellLayer : Prop
  deepCerebellarNuclei : Prop
  climbingFiberInput : Prop
  mossyFiberInput : Prop
  oscillatoryDynamics : Prop
  circuitModelClosed : Prop

structure CerebellarCircuitModelEvidence (C : CerebellarCircuitModelPackage) where
  granularLayerClosed : C.granularLayer
  purkinjeCellLayerClosed : C.purkinjeCellLayer
  deepCerebellarNucleiClosed : C.deepCerebellarNuclei
  climbingFiberInputClosed : C.climbingFiberInput
  mossyFiberInputClosed : C.mossyFiberInput
  oscillatoryDynamicsClosed : C.oscillatoryDynamics
  circuitModelClosedTerm : C.circuitModelClosed

def CerebellarCircuitModelClosed (C : CerebellarCircuitModelPackage) : Prop :=
  C.granularLayer ∧ C.purkinjeCellLayer ∧ C.deepCerebellarNuclei ∧
  C.climbingFiberInput ∧ C.mossyFiberInput ∧ C.oscillatoryDynamics ∧ C.circuitModelClosed

theorem cerebellar_circuit_model_closed_from_evidence (C : CerebellarCircuitModelPackage)
    (E : CerebellarCircuitModelEvidence C) : CerebellarCircuitModelClosed C := by
  exact And.intro E.granularLayerClosed
    (And.intro E.purkinjeCellLayerClosed
      (And.intro E.deepCerebellarNucleiClosed
        (And.intro E.climbingFiberInputClosed
          (And.intro E.mossyFiberInputClosed
            (And.intro E.oscillatoryDynamicsClosed E.circuitModelClosedTerm)))))

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse