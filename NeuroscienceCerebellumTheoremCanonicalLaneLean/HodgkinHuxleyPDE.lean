import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

/-! Hodgkin-Huxley PDE Package -/

structure HodgkinHuxleySystem where
  membraneCapacitance : Prop
  ionChannelConductances : Prop
  gatingVariables : Prop
  evolutionEquations : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleySystem) where
  membraneCapacitanceClosed : H.membraneCapacitance
  ionChannelConductancesClosed : H.ionChannelConductances
  gatingVariablesClosed : H.gatingVariables
  evolutionEquationsClosed : H.evolutionEquations

def HodgkinHuxleyClosed (H : HodgkinHuxleySystem) : Prop :=
  H.membraneCapacitance ∧ H.ionChannelConductances ∧ H.gatingVariables ∧ H.evolutionEquations

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleySystem) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.ionChannelConductancesClosed
      (And.intro E.gatingVariablesClosed E.evolutionEquationsClosed))

end HautevilleHouse
end NeuroscienceCerebellumTheoremCanonicalLaneLean