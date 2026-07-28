import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibrationForms

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibratedSubmanifoldPackage (C : CalibrationFormPackage) where
  submanifold : Type u
  immersion : Type v
  calibrationCondition : CalibrationFormClosed C
  submanifoldCalibrated : Prop

structure CalibratedSubmanifoldEvidence {C : CalibrationFormPackage}
    (S : CalibratedSubmanifoldPackage C) where
  submanifoldCalibratedClosed : S.submanifoldCalibrated

def CalibratedSubmanifoldClosed {C : CalibrationFormPackage}
    (S : CalibratedSubmanifoldPackage C) : Prop :=
  S.submanifoldCalibrated

theorem calibrated_submanifold_closed_from_evidence
    {C : CalibrationFormPackage} (S : CalibratedSubmanifoldPackage C)
    (E : CalibratedSubmanifoldEvidence S) : CalibratedSubmanifoldClosed S := by
  exact E.submanifoldCalibratedClosed

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse
