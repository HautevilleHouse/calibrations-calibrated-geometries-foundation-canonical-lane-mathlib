import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibratedAdmittedObject where
  carrier : Type u
  calibrationForm : carrier → carrier → ℝ
  isClosedCalibration : Prop
  comassBounded : Prop
  homologicalVolumeMinimizing : Prop

structure AdmissibleClass where
  object : CalibratedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.isClosedCalibration ∧ A.object.comassBounded ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse