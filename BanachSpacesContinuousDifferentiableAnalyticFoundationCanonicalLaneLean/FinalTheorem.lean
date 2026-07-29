import BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean.GateLemmas
import BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean.BanachAlgebraLayer

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean

def ConstrainedBanachSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ BanachAlgebraLayerClosed defaultBanachAlgebraLayerCertificate

theorem constrained_banach_spaces_endgame (A : AdmissibleClass) :
    ConstrainedBanachSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) banach_algebra_layer_closed_checked)

end BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean
end HautevilleHouse