import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.remainderRecorded

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
