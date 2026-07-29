import ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionCompressionObjects

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ExtensionTheoremPackage (O : ExtCompAdmittedObject) where
  targetSpace : Type
  targetTopology : TopologicalSpace targetSpace
  extensionProperty : Prop
  uniqueExtension : Prop
  continuousExtension : Prop

structure ExtensionTheoremEvidence {O : ExtCompAdmittedObject} (P : ExtensionTheoremPackage O) where
  extensionPropertyClosed : P.extensionProperty
  uniqueExtensionClosed : P.uniqueExtension
  continuousExtensionClosed : P.continuousExtension

def ExtensionTheoremClosed {O : ExtCompAdmittedObject} (P : ExtensionTheoremPackage O) : Prop :=
  P.extensionProperty ∧ P.uniqueExtension ∧ P.continuousExtension

theorem extension_theorem_closed_from_evidence
    {O : ExtCompAdmittedObject} (P : ExtensionTheoremPackage O)
    (E : ExtensionTheoremEvidence P) : ExtensionTheoremClosed P := by
  exact And.intro E.extensionPropertyClosed (And.intro E.uniqueExtensionClosed E.continuousExtensionClosed)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse