import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibratedCurrents

/-!
# Calibration Geometry Foundation

This module assembles the calibration geometry route as a chain of closed
evidence packages. Every major component is an explicit field whose evidence
must be supplied before the route closes.
-/

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibrationGeometryFoundation (C : CalibrationPackage) where
  current : CalibratedCurrentPackage C
  currentEvidence : CalibratedCurrentEvidence C current
  regularity : Prop
  regularityProof : regularity
  classification : Prop
  classificationProof : classification

def CalibrationGeometryFoundationClosed (C : CalibrationPackage)
    (F : CalibrationGeometryFoundation C) : Prop :=
  CalibratedCurrentClosed C F.current ∧ F.regularity ∧ F.classification

theorem calibration_geometry_foundation_closed (C : CalibrationPackage)
    (F : CalibrationGeometryFoundation C) :
    CalibrationGeometryFoundationClosed C F := by
  exact And.intro (calibrated_current_closed_from_evidence C F.current F.currentEvidence)
    (And.intro F.regularityProof F.classificationProof)

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse