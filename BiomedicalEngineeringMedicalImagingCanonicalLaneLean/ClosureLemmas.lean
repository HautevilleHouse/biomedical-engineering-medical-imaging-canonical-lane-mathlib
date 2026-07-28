import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.groundTruth

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.groundTruth

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse