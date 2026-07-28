import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure SocialStructurePackage where
  kinshipSystem : Prop
  politicalOrganization : Prop
  stratification : Prop
  institutions : Prop

structure SocialStructureEvidence (S : SocialStructurePackage) where
  kinshipSystemClosed : S.kinshipSystem
  politicalOrganizationClosed : S.politicalOrganization
  stratificationClosed : S.stratification
  institutionsClosed : S.institutions

def SocialStructureClosed (S : SocialStructurePackage) : Prop :=
  S.kinshipSystem ∧ S.politicalOrganization ∧ S.stratification ∧ S.institutions

theorem social_structure_closed_from_evidence (S : SocialStructurePackage) (E : SocialStructureEvidence S) : SocialStructureClosed S :=
  And.intro E.kinshipSystemClosed (And.intro E.politicalOrganizationClosed (And.intro E.stratificationClosed E.institutionsClosed))

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse