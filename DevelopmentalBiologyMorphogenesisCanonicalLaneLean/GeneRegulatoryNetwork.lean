import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : List (Type u)
  targetGenes : List (Type v)
  regulatoryInteractions : Prop
  cisRegulatoryModules : Prop
  signalInputs : Prop
  feedbackLoops : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  cisRegulatoryModulesClosed : G.cisRegulatoryModules
  signalInputsClosed : G.signalInputs
  feedbackLoopsClosed : G.feedbackLoops

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.regulatoryInteractions ∧ G.cisRegulatoryModules ∧ G.signalInputs ∧ G.feedbackLoops

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed
    (And.intro E.cisRegulatoryModulesClosed
      (And.intro E.signalInputsClosed E.feedbackLoopsClosed))

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse
