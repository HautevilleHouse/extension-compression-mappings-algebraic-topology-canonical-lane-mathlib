import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure CompressionMappingPair where
  sourceSpace : Type u
  targetSpace : Type v
  compressionMap : sourceSpace → targetSpace
  compressionFactor : ℝ
  compressionInequality : ∀ (x y : sourceSpace), dist (compressionMap x) (compressionMap y) ≤ compressionFactor * dist x y
  compressionFactorPositive : compressionFactor > 0
  compressionFactorLessThanOne : compressionFactor < 1

structure CompressionMappingEvidence (C : CompressionMappingPair) where
  compressionInequalityClosed : C.compressionInequality
  compressionFactorPositiveClosed : C.compressionFactorPositive
  compressionFactorLessThanOneClosed : C.compressionFactorLessThanOne

def CompressionMappingClosed (C : CompressionMappingPair) : Prop :=
  C.compressionInequality ∧ C.compressionFactorPositive ∧ C.compressionFactorLessThanOne

theorem compression_mapping_closed_from_evidence (C : CompressionMappingPair)
    (Ev : CompressionMappingEvidence C) : CompressionMappingClosed C := by
  exact And.intro Ev.compressionInequalityClosed
    (And.intro Ev.compressionFactorPositiveClosed Ev.compressionFactorLessThanOneClosed)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
