import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ExtensionRetractionPair where
  space : Type u
  topology : TopologicalSpace space
  subspace : Type v
  subspaceEmbedding : subspace → space
  extensionMap : subspace → space
  retractionMap : space → subspace
  compositionIdentity : ∀ (x : subspace), retractionMap (extensionMap x) = x
  extensionContinuous : Continuous extensionMap
  retractionContinuous : Continuous retractionMap

structure ExtensionRetractionEvidence (E : ExtensionRetractionPair) where
  compositionIdentityClosed : E.compositionIdentity
  extensionContinuousClosed : E.extensionContinuous
  retractionContinuousClosed : E.retractionContinuous

def ExtensionRetractionClosed (E : ExtensionRetractionPair) : Prop :=
  E.compositionIdentity ∧ E.extensionContinuous ∧ E.retractionContinuous

theorem extension_retraction_closed_from_evidence (E : ExtensionRetractionPair) 
    (Ev : ExtensionRetractionEvidence E) : ExtensionRetractionClosed E := by
  exact And.intro Ev.compositionIdentityClosed
    (And.intro Ev.extensionContinuousClosed Ev.retractionContinuousClosed)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
