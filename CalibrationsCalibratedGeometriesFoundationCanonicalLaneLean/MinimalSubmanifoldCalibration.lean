import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibratedGeometry

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure MinimalSubmanifoldPackage {G : CalibratedManifoldPackage} where
  submanifold : Type u
  immersion : submanifold → G.space.carrier
  minimalCondition : Prop
  calibratedVolume : Prop
  homologyClass : Type v
  areaMinimizing : Prop

structure MinimalSubmanifoldEvidence {G : CalibratedManifoldPackage} (M : MinimalSubmanifoldPackage G) where
  minimalConditionClosed : M.minimalCondition
  calibratedVolumeClosed : M.calibratedVolume
  areaMinimizingClosed : M.areaMinimizing

def MinimalSubmanifoldClosed {G : CalibratedManifoldPackage} (M : MinimalSubmanifoldPackage G) : Prop :=
  M.minimalCondition ∧ M.calibratedVolume ∧ M.areaMinimizing

theorem minimal_submanifold_closed_from_evidence {G : CalibratedManifoldPackage} (M : MinimalSubmanifoldPackage G) (E : MinimalSubmanifoldEvidence M) : MinimalSubmanifoldClosed M :=
  And.intro E.minimalConditionClosed (And.intro E.calibratedVolumeClosed E.areaMinimizingClosed)

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse