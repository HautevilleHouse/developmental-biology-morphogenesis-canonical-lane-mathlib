import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure HardyWeinbergPackage where
  p : Float
  q : Float
  expectedGenotypeFrequencies : (Float × Float × Float)
  equilibriumCondition : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  expectedGenotypeFrequenciesClosed : H.expectedGenotypeFrequencies = (H.p^2, 2*H.p*H.q, H.q^2)
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.expectedGenotypeFrequencies = (H.p^2, 2*H.p*H.q, H.q^2) ∧ H.equilibriumCondition

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.expectedGenotypeFrequenciesClosed E.equilibriumConditionClosed

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse