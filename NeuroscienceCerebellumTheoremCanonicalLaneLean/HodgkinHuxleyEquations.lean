import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  membranePotential : Type u
  sodiumGating : Type v
  potassiumGating : Type w
  capacitance : Prop
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  activationKinetics : Prop
  inactivationKinetics : Prop
  equationsClosed : Prop

structure HodgkinHuxleyEquationsEvidence (H : HodgkinHuxleyEquationsPackage) where
  capacitanceClosed : H.capacitance
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  activationKineticsClosed : H.activationKinetics
  inactivationKineticsClosed : H.inactivationKinetics
  equationsClosedTerm : H.equationsClosed

def HodgkinHuxleyEquationsClosed (H : HodgkinHuxleyEquationsPackage) : Prop :=
  H.capacitance ∧ H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧
  H.activationKinetics ∧ H.inactivationKinetics ∧ H.equationsClosed

theorem hodgkin_huxley_equations_closed_from_evidence (H : HodgkinHuxleyEquationsPackage) 
    (E : HodgkinHuxleyEquationsEvidence H) : HodgkinHuxleyEquationsClosed H := by
  exact And.intro E.capacitanceClosed
    (And.intro E.sodiumCurrentClosed
      (And.intro E.potassiumCurrentClosed
        (And.intro E.leakCurrentClosed
          (And.intro E.activationKineticsClosed
            (And.intro E.inactivationKineticsClosed E.equationsClosedTerm)))))

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse