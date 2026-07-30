import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

/-! Hebbian Learning Package -/

structure HebbianLearningPackage where
  synapticPlasticity : Prop
  coincidenceDetection : Prop
  weightUpdateRule : Prop
  longTermPotentiationInduced : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  synapticPlasticityClosed : H.synapticPlasticity
  coincidenceDetectionClosed : H.coincidenceDetection
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationInducedClosed : H.longTermPotentiationInduced

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.synapticPlasticity ∧ H.coincidenceDetection ∧ H.weightUpdateRule ∧ H.longTermPotentiationInduced

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.synapticPlasticityClosed
    (And.intro E.coincidenceDetectionClosed
      (And.intro E.weightUpdateRuleClosed E.longTermPotentiationInducedClosed))

end HautevilleHouse
end NeuroscienceCerebellumTheoremCanonicalLaneLean