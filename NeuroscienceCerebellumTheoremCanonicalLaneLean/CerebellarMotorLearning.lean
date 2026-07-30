import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure MotorLearningPackage where
  learningRule : Type
  errorSignal : Type
  motorCommand : Type
  adaptationRate : Prop
  consolidation : Prop
  learningConvergence : Prop
  learningRuleClosed : Prop

def MotorLearningClosed (M : MotorLearningPackage) : Prop :=
  M.adaptationRate ∧ M.consolidation ∧ M.learningConvergence ∧ M.learningRuleClosed

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse