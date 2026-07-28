import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibrationForm
import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibratedSubmanifolds
import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibratedGeometryFoundation where
  calibrationForm : CalibrationForm
  calibrationFormEvidence : CalibrationFormEvidence calibrationForm
  calibratedSubmanifold : CalibratedSubmanifold calibrationForm
  calibratedSubmanifoldEvidence : CalibratedSubmanifoldEvidence calibratedSubmanifold

def CalibratedGeometryFoundationClosed (F : CalibratedGeometryFoundation) : Prop :=
  CalibrationFormClosed F.calibrationForm ∧ CalibratedSubmanifoldClosed F.calibratedSubmanifold

theorem calibrated_geometry_foundation_closed_from_evidence (F : CalibratedGeometryFoundation) :
    CalibratedGeometryFoundationClosed F := by
  exact And.intro (calibration_form_closed_from_evidence F.calibrationForm F.calibrationFormEvidence)
    (calibrated_submanifold_closed_from_evidence F.calibratedSubmanifold F.calibratedSubmanifoldEvidence)

/-- The foundation supplies the constrained closure for any admissible class. -/
theorem calibrated_geometry_foundation_supports_endgame (A : AdmissibleClass) :
    ConstrainedCalibrationClosure A :=
  constrained_calibration_endgame A

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse