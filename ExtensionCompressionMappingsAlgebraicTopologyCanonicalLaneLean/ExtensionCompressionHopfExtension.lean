import ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionCompressionExtensionTheorem

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure HopfExtensionPackage (O : ExtCompAdmittedObject) where
  hopfBundle : Type
  baseSpace : Type
  baseTopology : TopologicalSpace baseSpace
  fiber : Type
  extensionOverBase : Prop
  hopfInvariant : Prop

structure HopfExtensionEvidence {O : ExtCompAdmittedObject} (H : HopfExtensionPackage O) where
  extensionOverBaseClosed : H.extensionOverBase
  hopfInvariantClosed : H.hopfInvariant

def HopfExtensionClosed {O : ExtCompAdmittedObject} (H : HopfExtensionPackage O) : Prop :=
  H.extensionOverBase ∧ H.hopfInvariant

theorem hopf_extension_closed_from_evidence
    {O : ExtCompAdmittedObject} (H : HopfExtensionPackage O)
    (E : HopfExtensionEvidence H) : HopfExtensionClosed H := by
  exact And.intro E.extensionOverBaseClosed E.hopfInvariantClosed

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse