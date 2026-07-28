import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.CulturalTransmission

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure SocialStratificationPackage where
  hierarchyType : Type u
  casteSystem : Prop
  classSystem : Prop
  statusInequality : Prop
  evidence : Prop

structure SocialStratificationEvidence (S : SocialStratificationPackage) where
  casteClosed : S.casteSystem
  classClosed : S.classSystem
  inequalityClosed : S.statusInequality

def SocialStratificationClosed (S : SocialStratificationPackage) : Prop :=
  S.casteSystem ∧ S.classSystem ∧ S.statusInequality

theorem social_stratification_closed_from_evidence (S : SocialStratificationPackage)
    (E : SocialStratificationEvidence S) : SocialStratificationClosed S := by
  exact And.intro E.casteClosed (And.intro E.classClosed E.inequalityClosed)

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse