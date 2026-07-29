import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure CellDifferentiationPackage where
  pluripotentState : Prop
  lineageCommitted : Prop
  differentiationSignals : Prop
  epigeneticLandscape : Prop
  terminalDifferentiation : Prop

structure CellDifferentiationEvidence (C : CellDifferentiationPackage) where
  pluripotentStateClosed : C.pluripotentState
  lineageCommittedClosed : C.lineageCommitted
  differentiationSignalsClosed : C.differentiationSignals
  epigeneticLandscapeClosed : C.epigeneticLandscape
  terminalDifferentiationClosed : C.terminalDifferentiation

def CellDifferentiationClosed (C : CellDifferentiationPackage) : Prop :=
  C.pluripotentState ∧ C.lineageCommitted ∧ C.differentiationSignals ∧ C.epigeneticLandscape ∧ C.terminalDifferentiation

theorem cell_differentiation_closed_from_evidence
    (C : CellDifferentiationPackage) (E : CellDifferentiationEvidence C) :
    CellDifferentiationClosed C := by
  exact And.intro E.pluripotentStateClosed
    (And.intro E.lineageCommittedClosed
      (And.intro E.differentiationSignalsClosed
        (And.intro E.epigeneticLandscapeClosed E.terminalDifferentiationClosed)))

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse