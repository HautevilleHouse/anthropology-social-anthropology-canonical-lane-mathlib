import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

structure AnthropologyAdmittedObject where
  society : Type
  socialStructure : Prop
  culturalCoherence : Prop
  conclusion : socialStructure ∧ culturalCoherence

structure AdmissibleClass where
  object : AnthropologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AnthropologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse