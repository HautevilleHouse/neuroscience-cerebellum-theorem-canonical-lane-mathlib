import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure ConnectomicsCircuitMapping where
  synapseResolution : Type u
  voxelResolution : Type v
  circuitGraphModel : Prop
  cerebellarConnectivity : Prop
  motormapIntegration : Prop
  circuitGraphModelTerm : circuitGraphModel
  cerebellarConnectivityTerm : cerebellarConnectivity
  motormapIntegrationTerm : motormapIntegration

structure ConnectomicsCircuitMappingEvidence (C : ConnectomicsCircuitMapping) where
  circuitGraphModelClosed : C.circuitGraphModel
  cerebellarConnectivityClosed : C.cerebellarConnectivity
  motormapIntegrationClosed : C.motormapIntegration

def ConnectomicsCircuitMappingClosed (C : ConnectomicsCircuitMapping) : Prop :=
  C.circuitGraphModel ∧ C.cerebellarConnectivity ∧ C.motormapIntegration

theorem connectomics_circuit_mapping_closed_from_evidence
    (C : ConnectomicsCircuitMapping) (E : ConnectomicsCircuitMappingEvidence C) :
    ConnectomicsCircuitMappingClosed C := by
  exact And.intro E.circuitGraphModelClosed
    (And.intro E.cerebellarConnectivityClosed E.motormapIntegrationClosed)

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse