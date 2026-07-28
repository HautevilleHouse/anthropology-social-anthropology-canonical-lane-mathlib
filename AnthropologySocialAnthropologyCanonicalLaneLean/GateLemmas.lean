import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse