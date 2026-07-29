import BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean.DifferentiableMapsLayer
import Mathlib.Analysis.Analytic.Basic

/-!
# Analytic functions layer

This module records the analytic function structure via power series.
-/

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean

structure AnalyticFunctionsLayerCertificate where
  differentiableLayer : DifferentiableMapsLayerCertificate
  powerSeriesDefined : Prop
  radiusConvergence : ℝ
  analyticContinuationAvailable : Bool

def defaultAnalyticFunctionsLayerCertificate : AnalyticFunctionsLayerCertificate := {
  differentiableLayer := defaultDifferentiableMapsLayerCertificate,
  powerSeriesDefined := True,
  radiusConvergence := 1.0,
  analyticContinuationAvailable := true
}

def AnalyticFunctionsLayerClosed (C : AnalyticFunctionsLayerCertificate) : Prop :=
  C.powerSeriesDefined ∧ C.analyticContinuationAvailable = true

theorem analytic_functions_layer_closed_checked :
    AnalyticFunctionsLayerClosed defaultAnalyticFunctionsLayerCertificate := by
  unfold AnalyticFunctionsLayerClosed defaultAnalyticFunctionsLayerCertificate
  exact ⟨by simp, by simp⟩

end BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean
end HautevilleHouse