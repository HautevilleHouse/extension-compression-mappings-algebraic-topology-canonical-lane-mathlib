import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure PushoutPullbackPackage where
  pushout : Prop
  pullback : Prop
  universalPropertyPushout : Prop
  universalPropertyPullback : Prop
  glueingCondition : Prop

structure PushoutPullbackEvidence (P : PushoutPullbackPackage) where
  pushoutClosed : P.pushout
  pullbackClosed : P.pullback
  universalPropertyPushoutClosed : P.universalPropertyPushout
  universalPropertyPullbackClosed : P.universalPropertyPullback
  glueingConditionClosed : P.glueingCondition

def PushoutPullbackClosed (P : PushoutPullbackPackage) : Prop :=
  P.pushout ∧ P.pullback ∧ P.universalPropertyPushout ∧ P.universalPropertyPullback ∧ P.glueingCondition

theorem pushout_pullback_closed_from_evidence (P : PushoutPullbackPackage)
    (Ev : PushoutPullbackEvidence P) : PushoutPullbackClosed P :=
  And.intro Ev.pushoutClosed
    (And.intro Ev.pullbackClosed
      (And.intro Ev.universalPropertyPushoutClosed
        (And.intro Ev.universalPropertyPullbackClosed Ev.glueingConditionClosed)))

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse