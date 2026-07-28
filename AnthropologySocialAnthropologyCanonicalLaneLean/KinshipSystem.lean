import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.SocialStructure

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure KinshipSystemPackage (S : SocialStructurePackage) where
  descentRule : Prop
  marriageRule : Prop
  terminology : Prop
  residencePattern : Prop

structure KinshipSystemEvidence {S : SocialStructurePackage} (K : KinshipSystemPackage S) where
  descentRuleClosed : K.descentRule
  marriageRuleClosed : K.marriageRule
  terminologyClosed : K.terminology
  residencePatternClosed : K.residencePattern

def KinshipSystemClosed {S : SocialStructurePackage} (K : KinshipSystemPackage S) : Prop :=
  K.descentRule ∧ K.marriageRule ∧ K.terminology ∧ K.residencePattern

theorem kinship_system_closed_from_evidence {S : SocialStructurePackage} (K : KinshipSystemPackage S) (E : KinshipSystemEvidence K) : KinshipSystemClosed K :=
  And.intro E.descentRuleClosed (And.intro E.marriageRuleClosed (And.intro E.terminologyClosed E.residencePatternClosed))

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse