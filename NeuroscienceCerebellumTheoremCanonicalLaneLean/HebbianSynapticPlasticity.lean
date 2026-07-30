import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapseType : Type
  weightUpdateRule : Type
  spikeTimingDependence : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  plasticityRuleClosed : Prop

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.plasticityRuleClosed

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse