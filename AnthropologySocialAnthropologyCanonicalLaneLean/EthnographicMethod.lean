import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.SocialStructure

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.fieldDataCollected ∧ A.object.analysisConcluded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse