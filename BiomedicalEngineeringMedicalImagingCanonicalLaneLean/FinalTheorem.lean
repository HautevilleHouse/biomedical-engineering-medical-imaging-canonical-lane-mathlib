import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringMedicalImagingCanonicalLaneLean.ClosureLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

def ConstrainedMedicalImagingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medical_imaging_endgame (A : AdmissibleClass) :
    ConstrainedMedicalImagingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse