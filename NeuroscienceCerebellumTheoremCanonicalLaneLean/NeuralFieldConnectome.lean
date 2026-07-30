import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure NeuralFieldConnectome where
  brainRegionCount : Nat
  fiberBundle : Type u
  synapticWeight : Type v
  connectivityMatrix : Prop
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  whiteMatterTracts : Prop

def NeuralFieldConnectomeClosed (N : NeuralFieldConnectome) : Prop :=
  N.connectivityMatrix ∧ N.structuralConnectivity ∧ N.functionalConnectivity ∧ N.whiteMatterTracts

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse