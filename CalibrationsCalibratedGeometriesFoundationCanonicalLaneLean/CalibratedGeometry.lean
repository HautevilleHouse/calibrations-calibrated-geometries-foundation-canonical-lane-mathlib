import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibratedObjects

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure CalibratedManifoldPackage where
  space : CalibratedSpace
  metric : Type u
  calibration : Type v
  calibratingFormClosed : Prop
  comassOne : Prop
  calibrationCalibratesSubmanifold : Prop

structure CalibratedManifoldEvidence (C : CalibratedManifoldPackage) where
  calibratingFormClosedClosed : C.calibratingFormClosed
  comassOneClosed : C.comassOne
  calibrationCalibratesSubmanifoldClosed : C.calibrationCalibratesSubmanifold

def CalibratedManifoldClosed (C : CalibratedManifoldPackage) : Prop :=
  C.calibratingFormClosed ∧ C.comassOne ∧ C.calibrationCalibratesSubmanifold

theorem calibrated_manifold_closed_from_evidence (C : CalibratedManifoldPackage) (E : CalibratedManifoldEvidence C) : CalibratedManifoldClosed C :=
  And.intro E.calibratingFormClosedClosed (And.intro E.comassOneClosed E.calibrationCalibratesSubmanifoldClosed)

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse