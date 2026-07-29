import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionCompressionMappings

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure RepresentationTheoremPackage (M : ExtensionCompressionMapping) where
  representationSpace : Type w
  representationMap : M.sourceSpace → representationSpace
  representationInjective : Function.Injective representationMap
  representationSurjective : Function.Surjective representationMap
  representationCompatible : (representationMap ∘ M.compressionMap ∘ M.extensionMap) = representationMap
  representationInjectiveTerm : representationInjective
  representationSurjectiveTerm : representationSurjective
  representationCompatibleTerm : representationCompatible

def RepresentationTheoremClosed (P : RepresentationTheoremPackage M) : Prop :=
  P.representationInjective ∧ P.representationSurjective ∧ P.representationCompatible

theorem representation_theorem_closed (P : RepresentationTheoremPackage M) : RepresentationTheoremClosed P :=
  And.intro P.representationInjectiveTerm
    (And.intro P.representationSurjectiveTerm P.representationCompatibleTerm)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse