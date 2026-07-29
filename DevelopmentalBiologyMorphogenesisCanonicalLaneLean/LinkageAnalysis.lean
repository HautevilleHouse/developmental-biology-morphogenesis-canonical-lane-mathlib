import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure LinkageAnalysisPackage where
  loci : List String
  recombinationFraction : Float
  lodScore : Float
  linkageSignificant : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction ≥ 0.0 ∧ L.recombinationFraction ≤ 0.5
  lodScoreClosed : L.lodScore > 3.0
  linkageSignificantClosed : L.linkageSignificant

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  (L.recombinationFraction ≥ 0.0 ∧ L.recombinationFraction ≤ 0.5) ∧ L.lodScore > 3.0 ∧ L.linkageSignificant

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed (And.intro E.lodScoreClosed E.linkageSignificantClosed)

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse