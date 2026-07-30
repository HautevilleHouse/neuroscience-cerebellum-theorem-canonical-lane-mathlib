import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure CerebellarAdmittedObject where
  purkinjeCell : Type u
  granuleCell : Type v
  climbingFiber : Type w
  mossyFiber : Type x
  parallelFiber : Type y
  deepCerebellarNuclei : Type z
  cerebellarCortex : Prop
  cerebellothalamicTract : Prop
  cerebellumFunctionalUnity : Prop
  conclusion : cerebellumFunctionalUnity

def CerebellarWitnessClosed (O : CerebellarAdmittedObject) : Prop :=
  O.cerebellumFunctionalUnity

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse