import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

/-! Neural Field Theory Package -/

structure NeuralFieldTheoryPackage where
  populationActivity : Prop
  spatialCoupling : Prop
  integroDifferentialEquation : Prop
  patternFormation : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  populationActivityClosed : N.populationActivity
  spatialCouplingClosed : N.spatialCoupling
  integroDifferentialEquationClosed : N.integroDifferentialEquation
  patternFormationClosed : N.patternFormation

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.populationActivity ∧ N.spatialCoupling ∧ N.integroDifferentialEquation ∧ N.patternFormation

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.populationActivityClosed
    (And.intro E.spatialCouplingClosed
      (And.intro E.integroDifferentialEquationClosed E.patternFormationClosed))

end HautevilleHouse
end NeuroscienceCerebellumTheoremCanonicalLaneLean