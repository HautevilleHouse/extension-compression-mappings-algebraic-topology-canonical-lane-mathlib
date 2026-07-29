import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure AdmissibleClass where
  object : ExtensionCompressionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExtensionCompressionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse