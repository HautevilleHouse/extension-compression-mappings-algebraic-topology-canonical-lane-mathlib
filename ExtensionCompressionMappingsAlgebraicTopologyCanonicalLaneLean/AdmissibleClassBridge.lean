import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionCompressionMappings
import HautevilleHouse.ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.UniversalPropertyBridge
import HautevilleHouse.ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.RepresentationTheorem
import HautevilleHouse.ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.StructureDecomposition

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  extensionCompressionClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  extensionCompression_closed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse