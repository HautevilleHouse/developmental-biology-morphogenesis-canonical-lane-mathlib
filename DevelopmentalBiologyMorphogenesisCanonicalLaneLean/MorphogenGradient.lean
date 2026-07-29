import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogenSource : Type u
  diffusionCoeff : ℝ
  degradationRate : ℝ
  concentrationProfile : ℝ → ℝ
  gradientSensing : Prop
  targetTissueResponse : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  diffusionCoeffPositive : M.diffusionCoeff > 0
  degradationRateNonneg : M.degradationRate ≥ 0
  gradientSensingClosed : M.gradientSensing
  targetTissueResponseClosed : M.targetTissueResponse

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.diffusionCoeff > 0 ∧ M.degradationRate ≥ 0 ∧ M.gradientSensing ∧ M.targetTissueResponse

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.diffusionCoeffPositive
    (And.intro E.degradationRateNonneg
      (And.intro E.gradientSensingClosed E.targetTissueResponseClosed))

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse
