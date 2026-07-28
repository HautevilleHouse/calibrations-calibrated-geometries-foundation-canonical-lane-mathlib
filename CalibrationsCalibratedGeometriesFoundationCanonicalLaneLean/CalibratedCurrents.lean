import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibrationPackage

/-!
# Calibrated Currents Package

This module introduces calibrated currents as integral currents that are
dually calibrated by a closed form. The package records the current
structure and the calibration inequality.
-/

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibratedCurrentPackage (C : CalibrationPackage) where
  current : Type u
  integral : Prop
  boundaryRegularity : Prop
  calibrationInequality : Prop
  massMinimizing : Prop
  massMinimizingEvidence : massMinimizing

structure CalibratedCurrentEvidence (C : CalibrationPackage)
    (D : CalibratedCurrentPackage C) where
  integralProof : D.integral
  boundaryRegularityProof : D.boundaryRegularity
  calibrationInequalityProof : D.calibrationInequality

def CalibratedCurrentClosed (C : CalibrationPackage)
    (D : CalibratedCurrentPackage C) : Prop :=
  D.integral ∧ D.boundaryRegularity ∧ D.calibrationInequality

theorem calibrated_current_closed_from_evidence (C : CalibrationPackage)
    (D : CalibratedCurrentPackage C) (E : CalibratedCurrentEvidence C D) :
    CalibratedCurrentClosed C D := by
  exact And.intro E.integralProof
    (And.intro E.boundaryRegularityProof E.calibrationInequalityProof)

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse