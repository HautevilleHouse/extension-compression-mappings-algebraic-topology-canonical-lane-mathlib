import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure RetractAdjunctionPackage where
  retraction : Prop
  section_ : Prop
  adjunctionIso : Prop
  unitCounit : Prop
  triangleIdentities : Prop

structure RetractAdjunctionEvidence (R : RetractAdjunctionPackage) where
  retractionClosed : R.retraction
  sectionClosed : R.section_
  adjunctionIsoClosed : R.adjunctionIso
  unitCounitClosed : R.unitCounit
  triangleIdentitiesClosed : R.triangleIdentities

def RetractAdjunctionClosed (R : RetractAdjunctionPackage) : Prop :=
  R.retraction ∧ R.section_ ∧ R.adjunctionIso ∧ R.unitCounit ∧ R.triangleIdentities

theorem retract_adjunction_closed_from_evidence (R : RetractAdjunctionPackage)
    (Ev : RetractAdjunctionEvidence R) : RetractAdjunctionClosed R :=
  And.intro Ev.retractionClosed
    (And.intro Ev.sectionClosed
      (And.intro Ev.adjunctionIsoClosed
        (And.intro Ev.unitCounitClosed Ev.triangleIdentitiesClosed)))

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse