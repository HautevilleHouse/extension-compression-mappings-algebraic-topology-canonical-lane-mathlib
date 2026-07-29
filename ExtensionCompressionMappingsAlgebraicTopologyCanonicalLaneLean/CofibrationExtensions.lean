import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure CofibrationStructure (X : Type u) [TopologicalSpace X] (A : Set X) where
  inclusionMap : A → X
  inclusionContinuous : Continuous inclusionMap
  homotopyExtensionProperty : ∀ (Y : Type v) [TopologicalSpace Y] (f : X → Y) (h : A × Set.I → Y)
    (hCont : Continuous h) (hEq : ∀ a ∈ A, h (a, 0) = f (inclusionMap a)),
    ∃ (F : X × Set.I → Y), Continuous F ∧ (∀ x : X, F (x, 0) = f x) ∧ (∀ a ∈ A, ∀ t : Set.I, F (inclusionMap a, t) = h (a, t))

structure CofibrationEvidence (X : Type u) [TopologicalSpace X] (A : Set X)
  (C : CofibrationStructure X A) where
  inclusionContinuousClosed : C.inclusionContinuous
  homotopyExtensionPropertyClosed : C.homotopyExtensionProperty

def CofibrationStructureClosed (X : Type u) [TopologicalSpace X] (A : Set X)
  (C : CofibrationStructure X A) : Prop :=
  C.inclusionContinuous ∧ C.homotopyExtensionProperty

theorem cofibration_structure_closed_from_evidence (X : Type u) [TopologicalSpace X] (A : Set X)
  (C : CofibrationStructure X A) (E : CofibrationEvidence X A C) :
  CofibrationStructureClosed X A C :=
  And.intro E.inclusionContinuousClosed E.homotopyExtensionPropertyClosed

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
