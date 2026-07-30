import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

def ConstrainedCerebellumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cerebellum_endgame (A : AdmissibleClass) :
    ConstrainedCerebellumClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse