import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringMedicalImagingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse