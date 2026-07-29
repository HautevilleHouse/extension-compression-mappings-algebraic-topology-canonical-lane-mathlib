import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ExtensionCompressionMapping where
  sourceSpace : Type u
  targetSpace : Type v
  extensionMap : sourceSpace → targetSpace
  compressionMap : targetSpace → sourceSpace
  extensionCompressionLaw : (compressionMap ∘ extensionMap) = id
  compressionExtensionLaw : (extensionMap ∘ compressionMap) = id

def extensionCompressionClosed (M : ExtensionCompressionMapping) : Prop :=
  M.extensionCompressionLaw ∧ M.compressionExtensionLaw

theorem extension_compression_closed (M : ExtensionCompressionMapping) : extensionCompressionClosed M :=
  And.intro M.extensionCompressionLaw M.compressionExtensionLaw

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse