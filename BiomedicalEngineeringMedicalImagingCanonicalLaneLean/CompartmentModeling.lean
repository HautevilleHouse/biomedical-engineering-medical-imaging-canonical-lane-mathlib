import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure CompartmentModelPackage {C : MedicalImagingObject} where
  numCompartments : Nat
  rateConstants : Type
  initialConditions : Prop
  observableVariable : Type
  modelIdentifiability : Prop

structure CompartmentModelEvidence {C : MedicalImagingObject} (M : CompartmentModelPackage C) where
  numCompartmentsClosed : M.numCompartments = 2
  rateConstantsClosed : M.rateConstants
  initialConditionsClosed : M.initialConditions
  observableVariableClosed : M.observableVariable
  modelIdentifiabilityClosed : M.modelIdentifiability

def CompartmentModelClosed {C : MedicalImagingObject} (M : CompartmentModelPackage C) : Prop :=
  M.modelIdentifiability ∧ M.numCompartments = 2

theorem compartment_model_closed_from_evidence
    {C : MedicalImagingObject} (M : CompartmentModelPackage C) (E : CompartmentModelEvidence M) :
    CompartmentModelClosed M := by
  exact And.intro E.modelIdentifiabilityClosed E.numCompartmentsClosed

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse