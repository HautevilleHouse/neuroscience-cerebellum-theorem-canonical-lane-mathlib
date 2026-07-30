import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure NeuralFieldPackage where
  fieldPotential : Type
  firingRate : Type
  synapticKernel : Type
  wavePropagation : Prop
  bumpFormation : Prop
  oscillatoryActivity : Prop
  fieldDynamicsClosed : Prop

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.wavePropagation ∧ N.bumpFormation ∧ N.oscillatoryActivity ∧ N.fieldDynamicsClosed

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse