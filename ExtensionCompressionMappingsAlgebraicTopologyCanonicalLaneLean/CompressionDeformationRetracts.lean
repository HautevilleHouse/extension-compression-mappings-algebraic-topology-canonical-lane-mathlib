import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure DeformationRetractPair (X : Type u) [TopologicalSpace X] (A : Set X) where
  homotopy : X × Set.I → X
  homotopyContinuous : Continuous homotopy
  homotopyInitial : ∀ x : X, homotopy (x, 0) = x
  homotopyFinalInA : ∀ x : X, homotopy (x, 1) ∈ A
  homotopyFixedOnA : ∀ a ∈ A, ∀ t : Set.I, homotopy (a, t) = a

structure DeformationRetractEvidence (X : Type u) [TopologicalSpace X] (A : Set X)
  (D : DeformationRetractPair X A) where
  homotopyContinuousClosed : D.homotopyContinuous
  homotopyInitialClosed : D.homotopyInitial
  homotopyFinalInAClosed : D.homotopyFinalInA
  homotopyFixedOnAClosed : D.homotopyFixedOnA

def DeformationRetractPairClosed (X : Type u) [TopologicalSpace X] (A : Set X)
  (D : DeformationRetractPair X A) : Prop :=
  D.homotopyContinuous ∧ D.homotopyInitial ∧ D.homotopyFinalInA ∧ D.homotopyFixedOnA

theorem deformation_retract_pair_closed_from_evidence (X : Type u) [TopologicalSpace X] (A : Set X)
  (D : DeformationRetractPair X A) (E : DeformationRetractEvidence X A D) :
  DeformationRetractPairClosed X A D :=
  And.intro E.homotopyContinuousClosed (And.intro E.homotopyInitialClosed
    (And.intro E.homotopyFinalInAClosed E.homotopyFixedOnAClosed))

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
