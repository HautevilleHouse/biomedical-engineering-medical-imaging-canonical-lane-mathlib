import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Nat
  rateConstants : Array (Array ℝ)
  initialConditions : Array ℝ
  inputFunction : ℝ → ℝ
  outputEquation : ℝ → ℝ
  modelIdentifiability : Prop
  modelIdentifiabilityProof : modelIdentifiability

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  modelIdentifiabilityClosed : C.modelIdentifiability

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.modelIdentifiability

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
  CompartmentModelClosed C := by
  exact E.modelIdentifiabilityClosed

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse