import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure KinshipPackage where
  kinshipSystem : Type u
  descentRule : Prop
  marriageRule : Prop
  lineageDepth : Nat
  evidence : Prop

structure KinshipEvidence (K : KinshipPackage) where
  descentRuleClosed : K.descentRule
  marriageRuleClosed : K.marriageRule
  lineageDepthPositive : K.lineageDepth > 0

def KinshipClosed (K : KinshipPackage) : Prop :=
  K.descentRule ∧ K.marriageRule ∧ K.lineageDepth > 0

theorem kinship_closed_from_evidence (K : KinshipPackage) (E : KinshipEvidence K) :
    KinshipClosed K := by
  exact And.intro E.descentRuleClosed (And.intro E.marriageRuleClosed E.lineageDepthPositive)

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse