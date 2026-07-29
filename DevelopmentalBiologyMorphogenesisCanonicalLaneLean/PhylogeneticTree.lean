import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  treeTopology : String
  branchLengths : List Float
  likelihood : Float
  treeInferred : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  branchLengthsClosed : ∀ b ∈ P.branchLengths, b ≥ 0.0
  likelihoodClosed : P.likelihood > 0.0
  treeInferredClosed : P.treeInferred

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  (∀ b ∈ P.branchLengths, b ≥ 0.0) ∧ P.likelihood > 0.0 ∧ P.treeInferred

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.branchLengthsClosed (And.intro E.likelihoodClosed E.treeInferredClosed)

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse