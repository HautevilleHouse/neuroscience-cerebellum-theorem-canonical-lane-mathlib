import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure CerebellarMicrocircuitPackage where
  purkinjeCellInhibition : Prop
  granuleCellParallelFibers : Prop
  climbingFiberInput : Prop
  deepCerebellarNucleiOutput : Prop
  mossyFiberInput : Prop

structure CerebellarMicrocircuitEvidence (C : CerebellarMicrocircuitPackage) where
  purkinjeCellInhibitionClosed : C.purkinjeCellInhibition
  granuleCellParallelFibersClosed : C.granuleCellParallelFibers
  climbingFiberInputClosed : C.climbingFiberInput
  deepCerebellarNucleiOutputClosed : C.deepCerebellarNucleiOutput
  mossyFiberInputClosed : C.mossyFiberInput

def CerebellarMicrocircuitClosed (C : CerebellarMicrocircuitPackage) : Prop :=
  C.purkinjeCellInhibition ∧ C.granuleCellParallelFibers ∧ C.climbingFiberInput ∧
  C.deepCerebellarNucleiOutput ∧ C.mossyFiberInput

theorem cerebellar_microcircuit_closed_from_evidence (C : CerebellarMicrocircuitPackage)
    (E : CerebellarMicrocircuitEvidence C) : CerebellarMicrocircuitClosed C := by
  exact And.intro E.purkinjeCellInhibitionClosed
    (And.intro E.granuleCellParallelFibersClosed
      (And.intro E.climbingFiberInputClosed
        (And.intro E.deepCerebellarNucleiOutputClosed E.mossyFiberInputClosed)))

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse