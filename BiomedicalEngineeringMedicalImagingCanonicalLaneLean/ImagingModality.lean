import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

inductive ModalityType
| CT | MRI | PET | Ultrasound | XRay

structure ImagingModality where
  modalityType : ModalityType
  spatialResolution : ℝ
  temporalResolution : ℝ
  contrast : ℝ

def ImagingModalityClosed (I : ImagingModality) : Prop :=
  I.spatialResolution > 0 ∧ I.temporalResolution > 0 ∧ I.contrast > 0

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse