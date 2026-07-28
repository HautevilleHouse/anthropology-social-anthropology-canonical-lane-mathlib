import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure KinshipStructuralPackage where
  kinshipSystem : Type u
  marriageRules : Prop
  descentRules : Prop
  allianceStructure : Prop
  residencePatterns : Prop
  kinshipTerminology : Prop

structure KinshipStructuralEvidence (K : KinshipStructuralPackage) where
  marriageRulesClosed : K.marriageRules
  descentRulesClosed : K.descentRules
  allianceStructureClosed : K.allianceStructure
  residencePatternsClosed : K.residencePatterns
  kinshipTerminologyClosed : K.kinshipTerminology

def KinshipStructuralClosed (K : KinshipStructuralPackage) : Prop :=
  K.marriageRules ∧ K.descentRules ∧ K.allianceStructure ∧ K.residencePatterns ∧ K.kinshipTerminology

theorem kinship_structural_closed_from_evidence (K : KinshipStructuralPackage) (E : KinshipStructuralEvidence K) :
    KinshipStructuralClosed K := by
  exact And.intro E.marriageRulesClosed
    (And.intro E.descentRulesClosed
      (And.intro E.allianceStructureClosed
        (And.intro E.residencePatternsClosed E.kinshipTerminologyClosed)))

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse