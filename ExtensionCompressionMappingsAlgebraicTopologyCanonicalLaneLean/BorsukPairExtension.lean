import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure BorsukPair (X : Type u) [TopologicalSpace X] (A : Set X) (Y : Type v) [TopologicalSpace Y] where
  basepoint : X
  mapOnA : A → Y
  extensionExists : ∃ (f : X → Y), (∀ a ∈ A, f a = mapOnA a) ∧ Continuous f

structure BorsukPairEvidence (X : Type u) [TopologicalSpace X] (A : Set X) (Y : Type v) [TopologicalSpace Y]
  (B : BorsukPair X A Y) where
  extensionExistsClosed : B.extensionExists

def BorsukPairClosed (X : Type u) [TopologicalSpace X] (A : Set X) (Y : Type v) [TopologicalSpace Y]
  (B : BorsukPair X A Y) : Prop :=
  B.extensionExists

theorem borsuk_pair_closed_from_evidence (X : Type u) [TopologicalSpace X] (A : Set X) (Y : Type v) [TopologicalSpace Y]
  (B : BorsukPair X A Y) (E : BorsukPairEvidence X A Y B) : BorsukPairClosed X A Y B :=
  E.extensionExistsClosed

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
