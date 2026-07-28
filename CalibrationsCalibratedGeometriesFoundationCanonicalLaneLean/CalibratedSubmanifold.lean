import canonicalLaneMathlib.AdmissibleClass
import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibrationForm

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibratedSubmanifoldPackage {C : CalibrationFormPackage} where
  submanifold : Type u
  immersion : submanifold → C.ambientManifold
  orientation : Prop
  calibrationEquality : Prop
  volumeMinimizing : Prop

structure CalibratedSubmanifoldEvidence {C : CalibrationFormPackage} (S : CalibratedSubmanifoldPackage C) where
  calibrationEqualityClosed : S.calibrationEquality
  volumeMinimizingClosed : S.volumeMinimizing

def CalibratedSubmanifoldClosed {C : CalibrationFormPackage} (S : CalibratedSubmanifoldPackage C) : Prop :=
  S.calibrationEquality ∧ S.volumeMinimizing

theorem calibrated_submanifold_closed_from_evidence {C : CalibrationFormPackage} (S : CalibratedSubmanifoldPackage C)
    (E : CalibratedSubmanifoldEvidence S) : CalibratedSubmanifoldClosed S := by
  exact And.intro E.calibrationEqualityClosed E.volumeMinimizingClosed

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse
