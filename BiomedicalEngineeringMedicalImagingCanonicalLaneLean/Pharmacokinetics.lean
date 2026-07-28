import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure PharmacokineticParameter where
  drugName : String
  halfLife : ℝ
  volumeDistribution : ℝ
  clearance : ℝ

def PharmacokineticParameterClosed (P : PharmacokineticParameter) : Prop :=
  P.halfLife > 0 ∧ P.volumeDistribution > 0 ∧ P.clearance > 0

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse