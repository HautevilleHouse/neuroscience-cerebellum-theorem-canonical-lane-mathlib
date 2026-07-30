import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

def ConstrainedNeuroscienceCerebellumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_cerebellum_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceCerebellumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse