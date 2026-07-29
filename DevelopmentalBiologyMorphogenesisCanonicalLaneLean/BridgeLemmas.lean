import DevelopmentalBiologyMorphogenesisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MorphogenesisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end DevelopmentalBiologyMorphogenesisCanonicalLaneLean
end HautevilleHouse
