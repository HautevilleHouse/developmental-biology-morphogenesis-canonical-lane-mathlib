import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : Type u
  sourceCell : Type v
  concentrationField : morphogen -> sourceCell -> Prop
  diffusionCoefficient : Prop
  decayRate : Prop
  gradientSteepness : Prop
  gradientPattern : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  concentrationFieldClosed : M.concentrationField
  diffusionCoefficientClosed : M.diffusionCoefficient
  decayRateClosed : M.decayRate
  gradientSteepnessClosed : M.gradientSteepness
  gradientPatternClosed : M.gradientPattern

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.concentrationField ∧ M.diffusionCoefficient ∧ M.decayRate ∧ M.gradientSteepness ∧ M.gradientPattern

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.concentrationFieldClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.decayRateClosed
        (And.intro E.gradientSteepnessClosed E.gradientPatternClosed)))

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse