import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.KinshipSystem

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure RitualExchangePackage {S : SocialStructurePackage} {K : KinshipSystemPackage S} where
  giftExchange : Prop
  reciprocityMode : Prop
  symbolicCapital : Prop
  ritualCycle : Prop

structure RitualExchangeEvidence {S : SocialStructurePackage} {K : KinshipSystemPackage S} (R : RitualExchangePackage S K) where
  giftExchangeClosed : R.giftExchange
  reciprocityModeClosed : R.reciprocityMode
  symbolicCapitalClosed : R.symbolicCapital
  ritualCycleClosed : R.ritualCycle

def RitualExchangeClosed {S : SocialStructurePackage} {K : KinshipSystemPackage S} (R : RitualExchangePackage S K) : Prop :=
  R.giftExchange ∧ R.reciprocityMode ∧ R.symbolicCapital ∧ R.ritualCycle

theorem ritual_exchange_closed_from_evidence {S : SocialStructurePackage} {K : KinshipSystemPackage S} (R : RitualExchangePackage S K) (E : RitualExchangeEvidence R) : RitualExchangeClosed R :=
  And.intro E.giftExchangeClosed (And.intro E.reciprocityModeClosed (And.intro E.symbolicCapitalClosed E.ritualCycleClosed))

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse