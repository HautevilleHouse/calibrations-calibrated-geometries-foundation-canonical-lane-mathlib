import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.CalibrationForms

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure SpecialHolonomyPackage (C : CalibrationFormPackage) where
  holonomyGroup : Type u
  parallelForms : List (Type v)
  calibrationAssociated : Prop
  holonomyReduced : Prop

structure SpecialHolonomyEvidence {C : CalibrationFormPackage}
    (H : SpecialHolonomyPackage C) where
  calibrationAssociatedClosed : H.calibrationAssociated
  holonomyReducedClosed : H.holonomyReduced

def SpecialHolonomyClosed {C : CalibrationFormPackage}
    (H : SpecialHolonomyPackage C) : Prop :=
  H.calibrationAssociated ∧ H.holonomyReduced

theorem special_holonomy_closed_from_evidence
    {C : CalibrationFormPackage} (H : SpecialHolonomyPackage C)
    (E : SpecialHolonomyEvidence H) : SpecialHolonomyClosed H := by
  exact And.intro E.calibrationAssociatedClosed E.holonomyReducedClosed

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse
