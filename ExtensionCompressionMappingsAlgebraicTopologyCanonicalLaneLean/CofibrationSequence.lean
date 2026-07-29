import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure CofibrationSequencePackage where
  mappingCylinder : Prop
  mappingCone : Prop
  cofiberSequence : Prop
  exactness : Prop
  longExactSequence : Prop

structure CofibrationSequenceEvidence (C : CofibrationSequencePackage) where
  mappingCylinderClosed : C.mappingCylinder
  mappingConeClosed : C.mappingCone
  cofiberSequenceClosed : C.cofiberSequence
  exactnessClosed : C.exactness
  longExactSequenceClosed : C.longExactSequence

def CofibrationSequenceClosed (C : CofibrationSequencePackage) : Prop :=
  C.mappingCylinder ∧ C.mappingCone ∧ C.cofiberSequence ∧ C.exactness ∧ C.longExactSequence

theorem cofibration_sequence_closed_from_evidence (C : CofibrationSequencePackage)
    (Ev : CofibrationSequenceEvidence C) : CofibrationSequenceClosed C :=
  And.intro Ev.mappingCylinderClosed
    (And.intro Ev.mappingConeClosed
      (And.intro Ev.cofiberSequenceClosed
        (And.intro Ev.exactnessClosed Ev.longExactSequenceClosed)))

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse