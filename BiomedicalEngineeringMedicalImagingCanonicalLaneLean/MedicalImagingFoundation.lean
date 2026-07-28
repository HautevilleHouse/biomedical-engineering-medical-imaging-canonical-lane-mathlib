import HautevilleHouse.BiomedicalEngineeringMedicalImagingCanonicalLaneLean.CompartmentModel
import HautevilleHouse.BiomedicalEngineeringMedicalImagingCanonicalLaneLean.Pharmacokinetics
import HautevilleHouse.BiomedicalEngineeringMedicalImagingCanonicalLaneLean.DiagnosticInference
import HautevilleHouse.BiomedicalEngineeringMedicalImagingCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure MedicalImagingAnalyticFoundation where
  compartmentModel : CompartmentModelPackage
  compartmentModelEvidence : CompartmentModelEvidence compartmentModel
  pharmacokinetics : PharmacokineticsPackage
  pharmacokineticsEvidence : PharmacokineticsEvidence pharmacokinetics
  diagnosticInference : DiagnosticInferencePackage
  diagnosticInferenceEvidence : DiagnosticInferenceEvidence diagnosticInference
  survivalAnalysis : SurvivalAnalysisPackage
  survivalAnalysisEvidence : SurvivalAnalysisEvidence survivalAnalysis

def MedicalImagingAnalyticFoundationClosed (F : MedicalImagingAnalyticFoundation) : Prop :=
  CompartmentModelClosed F.compartmentModel ∧
  PharmacokineticsClosed F.pharmacokinetics ∧
  DiagnosticInferenceClosed F.diagnosticInference ∧
  SurvivalAnalysisClosed F.survivalAnalysis

theorem medical_imaging_analytic_foundation_closed_from_evidence
    (F : MedicalImagingAnalyticFoundation) :
    MedicalImagingAnalyticFoundationClosed F := by
  exact And.intro
    (compartment_model_closed_from_evidence F.compartmentModel F.compartmentModelEvidence)
    (And.intro
      (pharmacokinetics_closed_from_evidence F.pharmacokinetics F.pharmacokineticsEvidence)
      (And.intro
        (diagnostic_inference_closed_from_evidence F.diagnosticInference F.diagnosticInferenceEvidence)
        (survival_analysis_closed_from_evidence F.survivalAnalysis F.survivalAnalysisEvidence)))

/-- Convert a foundation into an AdmissibleClass for the bridge/gate closure. -/
def foundationToAdmissibleClass (F : MedicalImagingAnalyticFoundation) : AdmissibleClass :=
  let closed := MedicalImagingAnalyticFoundationClosed F
  let proof := medical_imaging_analytic_foundation_closed_from_evidence F
  {
    object := { conclusion := closed },
    endpointSatisfied := closed,
    remainderRecorded := False,
    gateWitness := Or.inl proof
  }

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse