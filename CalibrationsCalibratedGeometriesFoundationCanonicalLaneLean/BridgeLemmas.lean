import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.isClosedCalibration ∧ A.object.comassBounded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine ⟨A.object.isClosedCalibration, A.object.comassBounded⟩

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse