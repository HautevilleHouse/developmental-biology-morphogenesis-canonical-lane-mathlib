import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure SequenceAlignmentModel where
  sequenceA : String
  sequenceB : String
  alignmentScore : Float
  gapPenalty : Float
  substitutionMatrix : String
  optimalAlignmentFound : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentModel) where
  alignmentScoreClosed : S.alignmentScore > 0.0
  gapPenaltyClosed : S.gapPenalty < 0.0
  optimalAlignmentFoundClosed : S.optimalAlignmentFound

def SequenceAlignmentClosed (S : SequenceAlignmentModel) : Prop :=
  S.alignmentScore > 0.0 ∧ S.gapPenalty < 0.0 ∧ S.optimalAlignmentFound

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentModel)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.alignmentScoreClosed (And.intro E.gapPenaltyClosed E.optimalAlignmentFoundClosed)

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse