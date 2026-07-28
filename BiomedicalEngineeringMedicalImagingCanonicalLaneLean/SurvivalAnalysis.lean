import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure SurvivalAnalysisPackage where
  eventTimes : List ℝ
  censoringIndicators : List ℕ
  hazarFunction : ℝ → ℝ
  survivalFunction : ℝ → ℝ
  kaplanMeierEstimatorValid : Prop
  coxModelAssumptionsValid : Prop
  kaplanMeierEstimatorValidProof : kaplanMeierEstimatorValid
  coxModelAssumptionsValidProof : coxModelAssumptionsValid

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  kaplanMeierEstimatorValidClosed : S.kaplanMeierEstimatorValid
  coxModelAssumptionsValidClosed : S.coxModelAssumptionsValid

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.kaplanMeierEstimatorValid ∧ S.coxModelAssumptionsValid

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
  SurvivalAnalysisClosed S := by
  exact And.intro E.kaplanMeierEstimatorValidClosed E.coxModelAssumptionsValidClosed

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse