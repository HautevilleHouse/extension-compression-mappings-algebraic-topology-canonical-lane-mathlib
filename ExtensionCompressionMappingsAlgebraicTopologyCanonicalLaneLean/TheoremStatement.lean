import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ExtensionCompressionAdmittedObject where
  carrier : Type
  extensionClosed : Prop
  compressionClosed : Prop
  conclusion : extensionClosed ∧ compressionClosed

structure ExtensionCompressionEndgameState where
  object : ExtensionCompressionAdmittedObject

def ExtensionCompressionWitnessClosed (O : ExtensionCompressionAdmittedObject) : Prop :=
  O.extensionClosed ∧ O.compressionClosed

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse