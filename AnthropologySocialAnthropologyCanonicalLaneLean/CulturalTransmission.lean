import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.KinshipStructure

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure CulturalTransmissionPackage where
  transmissionMode : Type u
  verticalTransmission : Prop
  horizontalTransmission : Prop
  obliqueTransmission : Prop
  evidence : Prop

structure CulturalTransmissionEvidence (C : CulturalTransmissionPackage) where
  verticalClosed : C.verticalTransmission
  horizontalClosed : C.horizontalTransmission
  obliqueClosed : C.obliqueTransmission

def CulturalTransmissionClosed (C : CulturalTransmissionPackage) : Prop :=
  C.verticalTransmission ∧ C.horizontalTransmission ∧ C.obliqueTransmission

theorem cultural_transmission_closed_from_evidence (C : CulturalTransmissionPackage)
    (E : CulturalTransmissionEvidence C) : CulturalTransmissionClosed C := by
  exact And.intro E.verticalClosed (And.intro E.horizontalClosed E.obliqueClosed)

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse