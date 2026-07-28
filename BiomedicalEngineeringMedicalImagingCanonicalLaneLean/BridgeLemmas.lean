import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringMedicalImagingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MedicalImagingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse