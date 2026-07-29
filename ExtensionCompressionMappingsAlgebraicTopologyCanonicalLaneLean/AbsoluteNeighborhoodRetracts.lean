import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ANRStructure (X : Type u) [TopologicalSpace X] where
  embeddingInEuclidean : Type v
  topologicalSpaceEmbedding : TopologicalSpace embeddingInEuclidean
  embeddingMap : X → embeddingInEuclidean
  embeddingIsClosedEmbedding : ClosedEmbedding embeddingMap
  retractionExists : ∀ (openNeigh : Set embeddingInEuclidean) (hOpen : IsOpen openNeigh) (hContains : Set.range embeddingMap ⊆ openNeigh),
    Nonempty (Retraction embeddingInEuclidean openNeigh)

structure ANREvidence (X : Type u) [TopologicalSpace X] (A : ANRStructure X) where
  embeddingIsClosedEmbeddingClosed : A.embeddingIsClosedEmbedding
  retractionExistsClosed : A.retractionExists

def ANRStructureClosed (X : Type u) [TopologicalSpace X] (A : ANRStructure X) : Prop :=
  A.embeddingIsClosedEmbedding ∧ A.retractionExists

theorem anr_structure_closed_from_evidence (X : Type u) [TopologicalSpace X] (A : ANRStructure X)
  (E : ANREvidence X A) : ANRStructureClosed X A :=
  And.intro E.embeddingIsClosedEmbeddingClosed E.retractionExistsClosed

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
