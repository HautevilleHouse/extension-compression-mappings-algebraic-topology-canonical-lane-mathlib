import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ExtensionRetractPair (X : Type u) [TopologicalSpace X] (A : Set X) where
  extensionMap : X → X
  retractMap : X → X
  extensionFixedOnA : ∀ a ∈ A, extensionMap a = a
  retractImageInA : ∀ x : X, retractMap x ∈ A
  retractFixedOnA : ∀ a ∈ A, retractMap a = a
  compressionCondition : ∀ x : X, extensionMap (retractMap x) = retractMap x

structure ExtensionRetractEvidence (X : Type u) [TopologicalSpace X] (A : Set X)
  (P : ExtensionRetractPair X A) where
  extensionFixedOnAClosed : P.extensionFixedOnA
  retractImageInAClosed : P.retractImageInA
  retractFixedOnAClosed : P.retractFixedOnA
  compressionConditionClosed : P.compressionCondition

def ExtensionRetractPairClosed (X : Type u) [TopologicalSpace X] (A : Set X)
  (P : ExtensionRetractPair X A) : Prop :=
  P.extensionFixedOnA ∧ P.retractImageInA ∧ P.retractFixedOnA ∧ P.compressionCondition

theorem extension_retract_pair_closed_from_evidence (X : Type u) [TopologicalSpace X] (A : Set X)
  (P : ExtensionRetractPair X A) (E : ExtensionRetractEvidence X A P) : ExtensionRetractPairClosed X A P :=
  And.intro E.extensionFixedOnAClosed (And.intro E.retractImageInAClosed (And.intro E.retractFixedOnAClosed E.compressionConditionClosed))

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
