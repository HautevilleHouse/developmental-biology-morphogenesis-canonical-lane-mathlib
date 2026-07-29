import DevelopmentalBiologyMorphogenesisCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure PhylogeneticTree where
  species : List String
  treeRepresentation : String
  bootstrapSupport : ℝ

structure PhylogeneticsPackage where
  organism : Organism
  tree : PhylogeneticTree
  monophyleticClade : Prop

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.monophyleticClade ∧ P.tree.bootstrapSupport ≥ 70.0

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  monophyleticCladeClosed : P.monophyleticClade
  bootstrapSupportHighEnough : P.tree.bootstrapSupport ≥ 70.0

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P :=
  And.intro E.monophyleticCladeClosed E.bootstrapSupportHighEnough

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse
