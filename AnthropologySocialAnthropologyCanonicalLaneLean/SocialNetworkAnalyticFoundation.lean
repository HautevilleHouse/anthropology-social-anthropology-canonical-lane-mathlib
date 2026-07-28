import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.KinshipStructuralPackage

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure SocialNetworkAnalyticFoundation where
  kinship : KinshipStructuralPackage
  kinshipEvidence : KinshipStructuralEvidence kinship
  socialNetworkConnections : Prop
  networkDensity : Prop
  centralityMeasures : Prop
  socialNetworkConnectionsClosed : socialNetworkConnections
  networkDensityClosed : networkDensity
  centralityMeasuresClosed : centralityMeasures
  socialNetworkFoundationClosed : Prop := socialNetworkConnections ∧ networkDensity ∧ centralityMeasures

theorem social_network_foundation_closed (S : SocialNetworkAnalyticFoundation) :
    S.socialNetworkFoundationClosed := by
  exact And.intro S.socialNetworkConnectionsClosed
    (And.intro S.networkDensityClosed S.centralityMeasuresClosed)

def SocialNetworkAnalyticFoundationClosed (S : SocialNetworkAnalyticFoundation) : Prop :=
  KinshipStructuralClosed S.kinship ∧ S.socialNetworkFoundationClosed

theorem social_network_analytic_foundation_closed_from_evidence (S : SocialNetworkAnalyticFoundation) :
    SocialNetworkAnalyticFoundationClosed S := by
  exact And.intro
    (kinship_structural_closed_from_evidence S.kinship S.kinshipEvidence)
    (social_network_foundation_closed S)

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse