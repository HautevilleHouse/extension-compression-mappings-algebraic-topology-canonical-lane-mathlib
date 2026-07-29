import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean

structure HomotopyExtensionPair where
  space : Type u
  subspace : Type v
  inclusion : subspace → space
  homotopyExtension : (subspace → ℝ) → (space → ℝ)
  homotopyLifting : (space → ℝ) → (subspace → ℝ)
  extensionLiftingCompatibility : Prop
  homotopyInvariance : Prop

structure HomotopyExtensionEvidence (H : HomotopyExtensionPair) where
  extensionLiftingCompatibilityClosed : H.extensionLiftingCompatibility
  homotopyInvarianceClosed : H.homotopyInvariance

def HomotopyExtensionClosed (H : HomotopyExtensionPair) : Prop :=
  H.extensionLiftingCompatibility ∧ H.homotopyInvariance

theorem homotopy_extension_closed_from_evidence (H : HomotopyExtensionPair)
    (Ev : HomotopyExtensionEvidence H) : HomotopyExtensionClosed H := by
  exact And.intro Ev.extensionLiftingCompatibilityClosed Ev.homotopyInvarianceClosed

end ExtensionCompressionMappingsAlgebraicTopologyCanonicalLaneLean
end HautevilleHouse
