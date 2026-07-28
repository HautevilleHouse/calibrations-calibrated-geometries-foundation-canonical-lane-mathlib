import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibrationFormPackage where
  manifold : Type u
  differentialForm : Type v
  comass : Prop
  closedCondition : Prop
  comassNormalized : Prop

structure CalibrationFormEvidence (C : CalibrationFormPackage) where
  comassClosed : C.comass
  closedConditionClosed : C.closedCondition
  comassNormalizedClosed : C.comassNormalized

def CalibrationFormClosed (C : CalibrationFormPackage) : Prop :=
  C.comass ∧ C.closedCondition ∧ C.comassNormalized

theorem calibration_form_closed_from_evidence (C : CalibrationFormPackage)
    (E : CalibrationFormEvidence C) : CalibrationFormClosed C := by
  exact And.intro E.comassClosed (And.intro E.closedConditionClosed E.comassNormalizedClosed)

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse
