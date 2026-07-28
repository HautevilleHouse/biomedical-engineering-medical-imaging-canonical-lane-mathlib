import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure ImagingReconstructionPackage where
  forwardModel : Prop
  regularization : Prop
  reconstructionAlgorithm : Prop
  resolution : Prop
  noiseModel : Prop
  artifactControl : Prop

structure ImagingReconstructionEvidence (I : ImagingReconstructionPackage) where
  forwardModelClosed : I.forwardModel
  regularizationClosed : I.regularization
  reconstructionAlgorithmClosed : I.reconstructionAlgorithm
  resolutionClosed : I.resolution
  noiseModelClosed : I.noiseModel
  artifactControlClosed : I.artifactControl

def ImagingReconstructionClosed (I : ImagingReconstructionPackage) : Prop :=
  I.forwardModel ∧ I.regularization ∧ I.reconstructionAlgorithm ∧
  I.resolution ∧ I.noiseModel ∧ I.artifactControl

theorem imaging_reconstruction_closed_from_evidence
    (I : ImagingReconstructionPackage) (E : ImagingReconstructionEvidence I) :
    ImagingReconstructionClosed I := by
  exact And.intro E.forwardModelClosed
    (And.intro E.regularizationClosed
      (And.intro E.reconstructionAlgorithmClosed
        (And.intro E.resolutionClosed
          (And.intro E.noiseModelClosed E.artifactControlClosed))))

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse