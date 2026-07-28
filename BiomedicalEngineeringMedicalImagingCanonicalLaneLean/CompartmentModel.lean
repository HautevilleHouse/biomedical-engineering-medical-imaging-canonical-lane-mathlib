import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringMedicalImagingCanonicalLaneLean

structure CompartmentModel where
  numCompartments : ℕ
  rateConstants : ℕ → ℕ → ℝ
  initialConditions : ℕ → ℝ
  outputEquation : ℝ → ℝ

def CompartmentModelClosed (C : CompartmentModel) : Prop :=
  C.numCompartments ≥ 1 ∧
  (∀ i j, 0 ≤ C.rateConstants i j) ∧
  (∀ i, C.initialConditions i ≥ 0)

end BiomedicalEngineeringMedicalImagingCanonicalLaneLean
end HautevilleHouse