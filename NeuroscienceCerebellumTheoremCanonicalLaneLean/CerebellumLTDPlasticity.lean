import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure CerebellumLTDPlasticity where
  longTermDepression : Prop
  parallelFiberClimbingFiberCoincidence : Prop
  purkinjeCellExcitabilityModulation : Prop
  motorLearningCorrelate : Prop
  longTermDepressionTerm : longTermDepression
  parallelFiberClimbingFiberCoincidenceTerm : parallelFiberClimbingFiberCoincidence
  purkinjeCellExcitabilityModulationTerm : purkinjeCellExcitabilityModulation
  motorLearningCorrelateTerm : motorLearningCorrelate

structure CerebellumLTDPlasticityEvidence (C : CerebellumLTDPlasticity) where
  longTermDepressionClosed : C.longTermDepression
  parallelFiberClimbingFiberCoincidenceClosed : C.parallelFiberClimbingFiberCoincidence
  purkinjeCellExcitabilityModulationClosed : C.purkinjeCellExcitabilityModulation
  motorLearningCorrelateClosed : C.motorLearningCorrelate

def CerebellumLTDPlasticityClosed (C : CerebellumLTDPlasticity) : Prop :=
  C.longTermDepression ∧ C.parallelFiberClimbingFiberCoincidence ∧
  C.purkinjeCellExcitabilityModulation ∧ C.motorLearningCorrelate

theorem cerebellum_ltd_plasticity_closed_from_evidence
    (C : CerebellumLTDPlasticity) (E : CerebellumLTDPlasticityEvidence C) :
    CerebellumLTDPlasticityClosed C := by
  exact And.intro E.longTermDepressionClosed
    (And.intro E.parallelFiberClimbingFiberCoincidenceClosed
      (And.intro E.purkinjeCellExcitabilityModulationClosed E.motorLearningCorrelateClosed))

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse