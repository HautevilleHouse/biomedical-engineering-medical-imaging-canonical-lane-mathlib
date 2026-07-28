import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure DiagnosticInferencePackage where
  truePositives : ℕ
  falsePositives : ℕ
  falseNegatives : ℕ
  trueNegatives : ℕ
  sensitivity : ℝ
  specificity : ℝ
  auc : ℝ
  diagnosticPerformanceValid : Prop
  diagnosticPerformanceValidProof : diagnosticPerformanceValid

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  diagnosticPerformanceValidClosed : D.diagnosticPerformanceValid

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.diagnosticPerformanceValid

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
  DiagnosticInferenceClosed D := by
  exact E.diagnosticPerformanceValidClosed

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse