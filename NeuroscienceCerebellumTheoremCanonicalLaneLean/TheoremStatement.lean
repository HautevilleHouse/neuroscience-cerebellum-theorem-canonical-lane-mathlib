import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumTheoremCanonicalLaneLean

structure CerebellumSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CerebellumAdmittedObject where
  space : CerebellumSpace
  marrAlbusTheory : Prop
  sensorimotorPrediction : Prop
  cerebellarModel : Type
  modelTopology : TopologicalSpace cerebellarModel
  isomorphicToCerebellum : Prop
  conclusion : isomorphicToCerebellum

def CerebellumWitnessClosed (O : CerebellumAdmittedObject) : Prop :=
  O.isomorphicToCerebellum

end NeuroscienceCerebellumTheoremCanonicalLaneLean
end HautevilleHouse