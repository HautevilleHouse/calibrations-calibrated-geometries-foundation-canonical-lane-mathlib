import HautevilleHouse.CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibrationPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  degree : ℕ
  calibrationForm : DifferentialForm M degree
  isClosed : d calibrationForm = 0
  comassCondition : Prop
  comassConditionTerm : comassCondition

structure CalibratedSubmanifoldPackage {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (C : CalibrationPackage M) where
  submanifold : SmoothSubmanifold M
  dimension : ℕ
  calibrated : Prop
  calibratedTerm : calibrated

def CalibrationClosed (C : CalibrationPackage M) : Prop :=
  C.isClosed ∧ C.comassCondition

theorem calibration_closed_from_evidence (C : CalibrationPackage M) :
    CalibrationClosed C := by
  exact And.intro C.isClosed C.comassConditionTerm

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse