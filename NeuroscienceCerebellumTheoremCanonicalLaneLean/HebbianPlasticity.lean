import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure HebbianPlasticityRule where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticEfficacy : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependentPlasticity : Prop

def HebbianPlasticityClosed (H : HebbianPlasticityRule) : Prop :=
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.spikeTimingDependentPlasticity

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse