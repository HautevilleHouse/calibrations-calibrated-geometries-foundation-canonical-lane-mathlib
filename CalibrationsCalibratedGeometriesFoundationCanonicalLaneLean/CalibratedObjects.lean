import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibratedSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CalibratedAdmittedObject where
  space : CalibratedSpace
  riemannianMetric : Prop
  calibrationForm : Prop
  calibratedSubmanifold : Prop
  conclusion : calibratedSubmanifold

def CalibratedWitnessClosed (O : CalibratedAdmittedObject) : Prop :=
  O.calibratedSubmanifold

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse