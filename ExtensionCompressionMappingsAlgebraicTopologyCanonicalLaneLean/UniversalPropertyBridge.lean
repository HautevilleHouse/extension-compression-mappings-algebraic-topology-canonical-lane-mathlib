import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionCompressionMappings

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure UniversalPropertyPackage (M : ExtensionCompressionMapping) where
  universalCondition : ∀ (Z : Type w) (f : M.sourceSpace → Z) (g : Z → M.targetSpace),
    (g ∘ f) = M.extensionMap → ∃! h : Z → M.targetSpace, (h ∘ f) = M.extensionMap
  universalConditionTerm : universalCondition

def UniversalPropertyClosed (P : UniversalPropertyPackage M) : Prop :=
  P.universalCondition

theorem universal_property_closed (P : UniversalPropertyPackage M) : UniversalPropertyClosed P :=
  P.universalConditionTerm

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse