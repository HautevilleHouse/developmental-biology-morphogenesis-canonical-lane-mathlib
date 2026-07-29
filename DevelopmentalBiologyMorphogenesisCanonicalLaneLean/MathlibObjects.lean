import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure Organism where
  species : String
  developmentalStage : String

gene frequency data
structure GenotypeFrequencies where
  p : ℝ / frequency of allele A
  q : ℝ / frequency of allele a

structure HardyWeinbergEquilibrium where
  p2 : ℝ / AA frequency under HWE
  q2 : ℝ / aa frequency under HWE
  2pq : ℝ / Aa frequency under HWE

structure MorphogenesisAdmittedObject where
  organism : Organism
  genotypeFrequencies : GenotypeFrequencies
  hweEquilibrium : HardyWeinbergEquilibrium
  phenotype : String
  conclusion : hweEquilibrium.p2 = genotypeFrequencies.p ^ 2 ∧ hweEquilibrium.q2 = genotypeFrequencies.q ^ 2 ∧ hweEquilibrium.2pq = 2 * genotypeFrequencies.p * genotypeFrequencies.q

def MorphogenesisWitnessClosed (O : MorphogenesisAdmittedObject) : Prop :=
  O.conclusion

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse
