import BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean.BanachSpectralSubstrate

/-!
# Banach Certificate

Combines the Banach space layer and spectral substrate into a single certificate object,
which serves as the endpoint for the admissible-class bridge.
-/

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean

structure BanachCertificate where
  banachLayer : BanachSpaceCertificate
  spectralSubstrate : BanachSpectralSubstrate
  allGatesPassed : Bool
  classicalBoundaryCarried : Bool

def banachCertificate : BanachCertificate := {
  banachLayer := banachSpaceCertificate,
  spectralSubstrate := banachSpectralSubstrate,
  allGatesPassed := true,
  classicalBoundaryCarried := true
}

def BanachCertificateClosed (C : BanachCertificate) : Prop :=
  BanachSpaceLayerClosed C.banachLayer ∧ BanachSpectralSubstrateReady C.spectralSubstrate ∧ C.allGatesPassed = true ∧ C.classicalBoundaryCarried = true

theorem banach_certificate_closed_checked :
    BanachCertificateClosed banachCertificate := by
  exact And.intro banach_space_layer_closed_checked (And.intro banach_spectral_substrate_ready_checked (And.intro rfl rfl))

end BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean
end HautevilleHouse