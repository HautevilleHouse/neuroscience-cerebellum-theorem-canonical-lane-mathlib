import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure MotorLearningControlPackage where
  motorCommand : Type u
  sensoryFeedback : Type v
  errorSignal : Type w
  forwardModel : Prop
  inverseModel : Prop
  feedbackErrorLearning : Prop
  cerebellarAdaptation : Prop
  timingControl : Prop
  coordinationDynamics : Prop
  motorControlClosed : Prop

structure MotorLearningControlEvidence (M : MotorLearningControlPackage) where
  forwardModelClosed : M.forwardModel
  inverseModelClosed : M.inverseModel
  feedbackErrorLearningClosed : M.feedbackErrorLearning
  cerebellarAdaptationClosed : M.cerebellarAdaptation
  timingControlClosed : M.timingControl
  coordinationDynamicsClosed : M.coordinationDynamics
  motorControlClosedTerm : M.motorControlClosed

def MotorLearningControlClosed (M : MotorLearningControlPackage) : Prop :=
  M.forwardModel ∧ M.inverseModel ∧ M.feedbackErrorLearning ∧
  M.cerebellarAdaptation ∧ M.timingControl ∧ M.coordinationDynamics ∧ M.motorControlClosed

theorem motor_learning_control_closed_from_evidence (M : MotorLearningControlPackage)
    (E : MotorLearningControlEvidence M) : MotorLearningControlClosed M := by
  exact And.intro E.forwardModelClosed
    (And.intro E.inverseModelClosed
      (And.intro E.feedbackErrorLearningClosed
        (And.intro E.cerebellarAdaptationClosed
          (And.intro E.timingControlClosed
            (And.intro E.coordinationDynamicsClosed E.motorControlClosedTerm)))))

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse