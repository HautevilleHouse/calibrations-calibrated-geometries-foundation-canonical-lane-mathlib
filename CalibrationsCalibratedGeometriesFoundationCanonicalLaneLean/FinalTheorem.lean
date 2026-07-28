import canonicalLaneMathlib.AdmissibleClass
import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibrationForm
import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibratedSubmanifold

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibratedAdmissibleObject where
  formPackage : CalibrationFormPackage
  formEvidence : CalibrationFormEvidence formPackage
  submanifoldPackage : CalibratedSubmanifoldPackage formPackage
  submanifoldEvidence : CalibratedSubmanifoldEvidence submanifoldPackage

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalibrationFormClosed A.formPackage

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedCalibratedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calibrated_endgame (A : AdmissibleClass) :
    ConstrainedCalibratedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse
