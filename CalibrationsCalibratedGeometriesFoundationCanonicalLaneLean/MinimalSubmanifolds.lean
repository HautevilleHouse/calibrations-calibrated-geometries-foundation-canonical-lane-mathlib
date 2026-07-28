import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibratedSubmanifolds

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure MinimalSubmanifoldPackage (C : CalibrationFormPackage)
    (S : CalibratedSubmanifoldPackage C) where
  minimalCondition : Prop
  calibratedImpliesMinimal : Prop

structure MinimalSubmanifoldEvidence {C : CalibrationFormPackage}
    {S : CalibratedSubmanifoldPackage C} (M : MinimalSubmanifoldPackage C S) where
  minimalConditionClosed : M.minimalCondition
  calibratedImpliesMinimalClosed : M.calibratedImpliesMinimal

def MinimalSubmanifoldClosed {C : CalibrationFormPackage}
    {S : CalibratedSubmanifoldPackage C} (M : MinimalSubmanifoldPackage C S) : Prop :=
  M.minimalCondition ∧ M.calibratedImpliesMinimal

theorem minimal_submanifold_closed_from_evidence
    {C : CalibrationFormPackage} {S : CalibratedSubmanifoldPackage C}
    (M : MinimalSubmanifoldPackage C S) (E : MinimalSubmanifoldEvidence M) :
    MinimalSubmanifoldClosed M := by
  exact And.intro E.minimalConditionClosed E.calibratedImpliesMinimalClosed

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse
