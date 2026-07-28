import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Calibration Package

This module defines a calibration as a closed differential form that gives a
compatibility condition for calibrated submanifolds. The package records the
calibration data and the associated calibrated geometry structure.
-/

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibrationPackage where
  ambientManifold : Type u
  dimension : Nat
  calibrationForm : Type v
  closed : Prop
  comass : Prop
  calibratedSubmanifoldCondition : Prop
  calibrationEvidence : Prop

structure CalibrationEvidence (C : CalibrationPackage) where
  closedEvidence : C.closed
  comassEvidence : C.comass
  calibratedSubmanifoldConditionEvidence : C.calibratedSubmanifoldCondition

def CalibrationClosed (C : CalibrationPackage) : Prop :=
  C.closed ∧ C.comass ∧ C.calibratedSubmanifoldCondition

theorem calibration_closed_from_evidence (C : CalibrationPackage)
    (E : CalibrationEvidence C) : CalibrationClosed C := by
  exact And.intro E.closedEvidence
    (And.intro E.comassEvidence E.calibratedSubmanifoldConditionEvidence)

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse