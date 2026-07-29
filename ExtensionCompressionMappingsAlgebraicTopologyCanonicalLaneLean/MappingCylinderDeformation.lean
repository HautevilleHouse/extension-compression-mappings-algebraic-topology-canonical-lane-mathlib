import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean.ExtensionRetractionPairs

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure MappingCylinderData where
  source : Type u
  target : Type v
  map : source → target
  cylinder : Type w
  inclusionLeft : source → cylinder
  inclusionRight : target → cylinder
  deformationRetraction : cylinder → cylinder
  deformationHomotopy : cylinder → cylinder
  retractionConditions : Prop
  deformationProperties : Prop

structure MappingCylinderEvidence (M : MappingCylinderData) where
  retractionConditionsClosed : M.retractionConditions
  deformationPropertiesClosed : M.deformationProperties

def MappingCylinderClosed (M : MappingCylinderData) : Prop :=
  M.retractionConditions ∧ M.deformationProperties

theorem mapping_cylinder_closed_from_evidence (M : MappingCylinderData)
    (Ev : MappingCylinderEvidence M) : MappingCylinderClosed M := by
  exact And.intro Ev.retractionConditionsClosed Ev.deformationPropertiesClosed

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
