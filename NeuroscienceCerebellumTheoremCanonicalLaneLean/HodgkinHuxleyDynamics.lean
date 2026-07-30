import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotentialDynamics : Prop
  sodiumChannelGating : Prop
  potassiumChannelGating : Prop
  leakageCurrent : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  membranePotentialDynamicsClosed : H.membranePotentialDynamics
  sodiumChannelGatingClosed : H.sodiumChannelGating
  potassiumChannelGatingClosed : H.potassiumChannelGating
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.membranePotentialDynamics ∧ H.sodiumChannelGating ∧ H.potassiumChannelGating ∧
  H.leakageCurrent ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_dynamics_closed_from_evidence (H : HodgkinHuxleyDynamicsPackage)
    (E : HodgkinHuxleyDynamicsEvidence H) : HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.membranePotentialDynamicsClosed
    (And.intro E.sodiumChannelGatingClosed
      (And.intro E.potassiumChannelGatingClosed
        (And.intro E.leakageCurrentClosed E.actionPotentialGenerationClosed)))

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse