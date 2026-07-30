import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure CerebellarLearningPackage where
  hebbianPlasticity : Prop
  synapticWeightDynamics : Prop
  errorDrivenLearning : Prop
  longTermDepression : Prop
  longTermPotentiation : Prop

structure CerebellarLearningEvidence (C : CerebellarLearningPackage) where
  hebbianPlasticityClosed : C.hebbianPlasticity
  synapticWeightDynamicsClosed : C.synapticWeightDynamics
  errorDrivenLearningClosed : C.errorDrivenLearning
  longTermDepressionClosed : C.longTermDepression
  longTermPotentiationClosed : C.longTermPotentiation

def CerebellarLearningClosed (C : CerebellarLearningPackage) : Prop :=
  C.hebbianPlasticity ∧ C.synapticWeightDynamics ∧ C.errorDrivenLearning ∧
  C.longTermDepression ∧ C.longTermPotentiation

theorem cerebellar_learning_closed_from_evidence (C : CerebellarLearningPackage)
    (E : CerebellarLearningEvidence C) : CerebellarLearningClosed C := by
  exact And.intro E.hebbianPlasticityClosed
    (And.intro E.synapticWeightDynamicsClosed
      (And.intro E.errorDrivenLearningClosed
        (And.intro E.longTermDepressionClosed E.longTermPotentiationClosed)))

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse