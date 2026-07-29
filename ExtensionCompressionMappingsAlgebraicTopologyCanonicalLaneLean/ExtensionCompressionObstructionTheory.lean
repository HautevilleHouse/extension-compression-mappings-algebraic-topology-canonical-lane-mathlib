import ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionCompressionObjects

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ObstructionTheoryPackage (O : ExtCompAdmittedObject) where
  cohomologyGroup : Type
  obstructionClass : Type
  extensionObstruction : O.obstructionClass → Prop
  compressionObstruction : O.obstructionClass → Prop
  vanishingCondition : Prop

structure ObstructionTheoryEvidence {O : ExtCompAdmittedObject} (P : ObstructionTheoryPackage O) where
  extensionObstructionClosed : ∀ (x : O.obstructionClass), P.extensionObstruction x
  compressionObstructionClosed : ∀ (x : O.obstructionClass), P.compressionObstruction x
  vanishingConditionClosed : P.vanishingCondition

def ObstructionTheoryClosed {O : ExtCompAdmittedObject} (P : ObstructionTheoryPackage O) : Prop :=
  (∀ (x : O.obstructionClass), P.extensionObstruction x) ∧
  (∀ (x : O.obstructionClass), P.compressionObstruction x) ∧
  P.vanishingCondition

theorem obstruction_theory_closed_from_evidence
    {O : ExtCompAdmittedObject} (P : ObstructionTheoryPackage O)
    (E : ObstructionTheoryEvidence P) : ObstructionTheoryClosed P := by
  exact And.intro E.extensionObstructionClosed (And.intro E.compressionObstructionClosed E.vanishingConditionClosed)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse