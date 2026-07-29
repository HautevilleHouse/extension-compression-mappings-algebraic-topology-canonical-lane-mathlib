import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure ModelCategoryPackage where
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  liftingAxiom : Prop
  factorizationAxiom : Prop
  retractAxiom : Prop
  twoOutOfThree : Prop

structure ModelCategoryEvidence (M : ModelCategoryPackage) where
  weakEquivalencesClosed : M.weakEquivalences
  fibrationsClosed : M.fibrations
  cofibrationsClosed : M.cofibrations
  liftingAxiomClosed : M.liftingAxiom
  factorizationAxiomClosed : M.factorizationAxiom
  retractAxiomClosed : M.retractAxiom
  twoOutOfThreeClosed : M.twoOutOfThree

def ModelCategoryClosed (M : ModelCategoryPackage) : Prop :=
  M.weakEquivalences ∧ M.fibrations ∧ M.cofibrations ∧ M.liftingAxiom ∧
  M.factorizationAxiom ∧ M.retractAxiom ∧ M.twoOutOfThree

theorem model_category_closed_from_evidence (M : ModelCategoryPackage)
    (Ev : ModelCategoryEvidence M) : ModelCategoryClosed M :=
  And.intro Ev.weakEquivalencesClosed
    (And.intro Ev.fibrationsClosed
      (And.intro Ev.cofibrationsClosed
        (And.intro Ev.liftingAxiomClosed
          (And.intro Ev.factorizationAxiomClosed
            (And.intro Ev.retractAxiomClosed Ev.twoOutOfThreeClosed)))))

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse