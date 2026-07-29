import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : List String
  targetGenes : List String
  regulatoryEdges : Prop
  booleanDynamics : Prop
  attractorStates : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  regulatoryEdgesClosed : G.regulatoryEdges
  booleanDynamicsClosed : G.booleanDynamics
  attractorStatesClosed : G.attractorStates

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.regulatoryEdges ∧ G.booleanDynamics ∧ G.attractorStates

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryEdgesClosed (And.intro E.booleanDynamicsClosed E.attractorStatesClosed)

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse