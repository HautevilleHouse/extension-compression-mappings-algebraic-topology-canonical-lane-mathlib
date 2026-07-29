import ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionCompressionObjects

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure CompressionTheoremPackage (O : ExtCompAdmittedObject) where
  sourceSpace : Type
  sourceTopology : TopologicalSpace sourceSpace
  compressionProperty : Prop
  retractionProperty : Prop
  homotopyEquivalence : Prop

structure CompressionTheoremEvidence {O : ExtCompAdmittedObject} (P : CompressionTheoremPackage O) where
  compressionPropertyClosed : P.compressionProperty
  retractionPropertyClosed : P.retractionProperty
  homotopyEquivalenceClosed : P.homotopyEquivalence

def CompressionTheoremClosed {O : ExtCompAdmittedObject} (P : CompressionTheoremPackage O) : Prop :=
  P.compressionProperty ∧ P.retractionProperty ∧ P.homotopyEquivalence

theorem compression_theorem_closed_from_evidence
    {O : ExtCompAdmittedObject} (P : CompressionTheoremPackage O)
    (E : CompressionTheoremEvidence P) : CompressionTheoremClosed P := by
  exact And.intro E.compressionPropertyClosed (And.intro E.retractionPropertyClosed E.homotopyEquivalenceClosed)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse