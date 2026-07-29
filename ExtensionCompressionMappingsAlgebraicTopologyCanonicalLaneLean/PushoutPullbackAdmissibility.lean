import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure PushoutPullbackDiagram where
  indexCategory : Type u
  diagramType : Type v
  apex : Type w
  coneMaps : (i : indexCategory) → apex → diagramType
  coconeMaps : (i : indexCategory) → diagramType → apex
  universalProperty : Prop
  limitProperty : Prop

structure PushoutPullbackEvidence (D : PushoutPullbackDiagram) where
  universalPropertyClosed : D.universalProperty
  limitPropertyClosed : D.limitProperty

def PushoutPullbackClosed (D : PushoutPullbackDiagram) : Prop :=
  D.universalProperty ∧ D.limitProperty

theorem pushout_pullback_closed_from_evidence (D : PushoutPullbackDiagram)
    (Ev : PushoutPullbackEvidence D) : PushoutPullbackClosed D := by
  exact And.intro Ev.universalPropertyClosed Ev.limitPropertyClosed

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
