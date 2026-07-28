import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure MedicalImagingObject where
  patientID : String
  modality : String
  imageData : Type
  groundTruth : Prop

structure AdmissibleClass where
  object : MedicalImagingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (gateClosed A)

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse