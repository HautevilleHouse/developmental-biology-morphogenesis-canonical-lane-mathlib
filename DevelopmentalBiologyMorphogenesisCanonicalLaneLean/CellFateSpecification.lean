import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure CellFateSpecificationPackage where
  progenitorState : Prop
  signalingInputs : List String
  transcriptionalProgram : Prop
  lineageProgression : Prop
  morphologicalTransformation : Prop
  fateCommitment : Prop

structure CellFateSpecificationEvidence (C : CellFateSpecificationPackage) where
  progenitorStateClosed : C.progenitorState
  transcriptionalProgramClosed : C.transcriptionalProgram
  lineageProgressionClosed : C.lineageProgression
  morphologicalTransformationClosed : C.morphologicalTransformation
  fateCommitmentClosed : C.fateCommitment

def CellFateSpecificationClosed (C : CellFateSpecificationPackage) : Prop :=
  C.progenitorState ∧ C.transcriptionalProgram ∧ C.lineageProgression ∧ C.morphologicalTransformation ∧ C.fateCommitment

theorem cell_fate_specification_closed_from_evidence
    (C : CellFateSpecificationPackage) (E : CellFateSpecificationEvidence C) :
    CellFateSpecificationClosed C := by
  exact And.intro E.progenitorStateClosed
    (And.intro E.scriptionalProgramClosed
      (And.intro E.lineageProgressionClosed
        (And.intro E.morphologicalTransformationClosed E.fateCommitmentClosed)))

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse