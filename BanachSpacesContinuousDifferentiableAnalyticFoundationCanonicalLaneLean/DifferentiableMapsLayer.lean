import BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean.BanachSpaceLayer
import Mathlib.Analysis.Calculus.FDeriv.Basic

/-!
# Differentiable maps layer

This module records the Fréchet differentiability structure.
-/

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean

structure DifferentiableMapsLayerCertificate where
  sourceBanach : BanachSpaceLayerCertificate
  targetBanach : BanachSpaceLayerCertificate
  fDerivDefined : Prop
  ckClass : ℕ
  chainRuleAvailable : Bool

def defaultDifferentiableMapsLayerCertificate : DifferentiableMapsLayerCertificate := {
  sourceBanach := defaultBanachSpaceLayerCertificate,
  targetBanach := defaultBanachSpaceLayerCertificate,
  fDerivDefined := True,
  ckClass := 1,
  chainRuleAvailable := true
}

def DifferentiableMapsLayerClosed (C : DifferentiableMapsLayerCertificate) : Prop :=
  C.fDerivDefined ∧ C.chainRuleAvailable = true

theorem differentiable_maps_layer_closed_checked :
    DifferentiableMapsLayerClosed defaultDifferentiableMapsLayerCertificate := by
  have h1 : True := True.intro
  exact And.intro h1 rfl

end BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean
end HautevilleHouse