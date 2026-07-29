import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ExtensionCompressionMapping (X Y : Type) where
  f : X → Y
  g : Y → X
  extensionProperty : Prop
  compressionProperty : Prop
  extensionCompressionCompatibility : Prop

structure ExtensionCompressionMappingEvidence (E : ExtensionCompressionMapping X Y) where
  extensionPropertyClosed : E.extensionProperty
  compressionPropertyClosed : E.compressionProperty
  extensionCompressionCompatibilityClosed : E.extensionCompressionCompatibility

def ExtensionCompressionMappingClosed (E : ExtensionCompressionMapping X Y) : Prop :=
  E.extensionProperty ∧ E.compressionProperty ∧ E.extensionCompressionCompatibility

theorem extension_compression_mapping_closed_from_evidence
    {X Y : Type} (E : ExtensionCompressionMapping X Y)
    (Ev : ExtensionCompressionMappingEvidence E) : ExtensionCompressionMappingClosed E :=
  And.intro Ev.extensionPropertyClosed (And.intro Ev.compressionPropertyClosed Ev.extensionCompressionCompatibilityClosed)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse