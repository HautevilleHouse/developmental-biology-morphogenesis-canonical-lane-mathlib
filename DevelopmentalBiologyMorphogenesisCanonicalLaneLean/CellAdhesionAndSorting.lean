import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure CellAdhesionAndSortingPackage where
  cellType : Type u
  adhesionMolecule : Type v
  homotypicBinding : cellType -> cellType -> Prop
  heterotypicBinding : cellType -> cellType -> Prop
  differentialAdhesion : Prop
  sortingOutcome : Prop

structure CellAdhesionAndSortingEvidence (C : CellAdhesionAndSortingPackage) where
  homotypicBindingClosed : C.homotypicBinding
  heterotypicBindingClosed : C.heterotypicBinding
  differentialAdhesionClosed : C.differentialAdhesion
  sortingOutcomeClosed : C.sortingOutcome

def CellAdhesionAndSortingClosed (C : CellAdhesionAndSortingPackage) : Prop :=
  C.homotypicBinding ∧ C.heterotypicBinding ∧ C.differentialAdhesion ∧ C.sortingOutcome

theorem cell_adhesion_and_sorting_closed_from_evidence (C : CellAdhesionAndSortingPackage) (E : CellAdhesionAndSortingEvidence C) :
    CellAdhesionAndSortingClosed C := by
  exact And.intro E.homotypicBindingClosed
    (And.intro E.heterotypicBindingClosed
      (And.intro E.differentialAdhesionClosed E.sortingOutcomeClosed))

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse