import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

def ConstrainedExtensionCompressionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_extension_compression_endgame (A : AdmissibleClass) :
    ConstrainedExtensionCompressionClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
