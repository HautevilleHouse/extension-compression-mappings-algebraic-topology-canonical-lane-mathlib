import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionCompressionMappings

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure StructureDecompositionPackage (M : ExtensionCompressionMapping) where
  factorA : Type u
  factorB : Type v
  factorMapA : M.sourceSpace → factorA
  factorMapB : factorA → M.targetSpace
  decompositionLaw : (factorMapB ∘ factorMapA) = M.extensionMap
  remainingMap : M.targetSpace → M.sourceSpace
  compressionFactorLaw : (remainingMap ∘ M.extensionMap) = M.compressionMap
  factorMapATerm : factorMapA
  factorMapBTerm : factorMapB
  decompositionLawTerm : decompositionLaw
  remainingMapTerm : remainingMap
  compressionFactorLawTerm : compressionFactorLaw

def StructureDecompositionClosed (P : StructureDecompositionPackage M) : Prop :=
  P.decompositionLaw ∧ P.compressionFactorLaw

theorem structure_decomposition_closed (P : StructureDecompositionPackage M) : StructureDecompositionClosed P :=
  And.intro P.decompositionLawTerm P.compressionFactorLawTerm

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse