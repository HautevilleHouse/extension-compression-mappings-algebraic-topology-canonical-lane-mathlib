import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ExtensionCompressionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ExtCompAdmittedObject where
  space : ExtensionCompressionSpace
  isExtensionClosed : Prop
  isCompressionClosed : Prop
  obstructionClass : Type
  obstructionVanishes : Prop
  conclusion : obstructionVanishes

def ExtCompWitnessClosed (O : ExtCompAdmittedObject) : Prop :=
  O.obstructionVanishes

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse