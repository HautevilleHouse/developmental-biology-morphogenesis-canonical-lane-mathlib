import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

structure SegmentationClockPackage where
  clockGenes : List String
  oscillatoryDynamics : Prop
  wavefrontPropagation : Prop
  somitogenesis : Prop
  clockAndWavefront : Prop
  robustnessToNoise : Prop

structure SegmentationClockEvidence (S : SegmentationClockPackage) where
  oscillatoryDynamicsClosed : S.oscillatoryDynamics
  wavefrontPropagationClosed : S.wavefrontPropagation
  somitogenesisClosed : S.somitogenesis
  clockAndWavefrontClosed : S.clockAndWavefront
  robustnessToNoiseClosed : S.robustnessToNoise

def SegmentationClockClosed (S : SegmentationClockPackage) : Prop :=
  S.oscillatoryDynamics ∧ S.wavefrontPropagation ∧ S.somitogenesis ∧ S.clockAndWavefront ∧ S.robustnessToNoise

theorem segmentation_clock_closed_from_evidence
    (S : SegmentationClockPackage) (E : SegmentationClockEvidence S) :
    SegmentationClockClosed S := by
  exact And.intro E.oscillatoryDynamicsClosed
    (And.intro E.wavefrontPropagationClosed
      (And.intro E.somitogenesisClosed
        (And.intro E.clockAndWavefrontClosed E.robustnessToNoiseClosed)))

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse