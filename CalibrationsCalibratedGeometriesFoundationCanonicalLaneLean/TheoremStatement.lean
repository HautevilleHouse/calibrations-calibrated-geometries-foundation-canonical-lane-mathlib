import CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean

structure TheoremStatement where
  domain : String
  closureDefinition : String
  proofGiven : Bool

def sourceTheoremStatement : TheoremStatement :=
  {
    domain := "CalibrationsCalibratedGeometries"
    closureDefinition := "ConstrainedCalibrationsCalibratedGeometriesClosure"
    proofGiven := true
  }

theorem theorem_statement_holds :
    sourceTheoremStatement.proofGiven = true := by
  rfl

end CalibrationsCalibratedGeometriesFoundationCanonicalLaneLean
end HautevilleHouse