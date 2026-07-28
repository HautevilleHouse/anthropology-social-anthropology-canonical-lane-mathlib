import HautevilleHouse.AnthropologySocialAnthropologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnthropologySocialAnthropologyCanonicalLaneLean

def ConstrainedAnthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_anthropology_endgame (A : AdmissibleClass) :
    ConstrainedAnthropologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologySocialAnthropologyCanonicalLaneLean
end HautevilleHouse