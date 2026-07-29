import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure GenotypeFrequencyModel where
  genotype : String
  frequency : Float
  referenceFrequency : Float
  hardyWeinbergDeviation : Float

structure GenotypeFrequencyEvidence (M : GenotypeFrequencyModel) where
  frequencyClosed : M.frequency > 0.0
  referenceFrequencyClosed : M.referenceFrequency > 0.0
  hardyWeinbergDeviationClosed : M.hardyWeinbergDeviation = 0.0

def GenotypeFrequencyClosed (M : GenotypeFrequencyModel) : Prop :=
  M.frequency > 0.0 ∧ M.referenceFrequency > 0.0 ∧ M.hardyWeinbergDeviation = 0.0

theorem genotype_frequency_closed_from_evidence (M : GenotypeFrequencyModel)
    (E : GenotypeFrequencyEvidence M) : GenotypeFrequencyClosed M := by
  exact And.intro E.frequencyClosed (And.intro E.referenceFrequencyClosed E.hardyWeinbergDeviationClosed)

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse