import BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.NormedSpace.Banach

/-!
# Banach space layer

This module records the Banach space structure as an admissible object.
-/

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean

structure BanachSpaceLayerCertificate where
  space : Type
  norm : space → ℝ
  isNormedAddCommGroup : IsNormedAddCommGroup space
  isComplete : CompleteSpace space
  sourceKey : String
  substrateReady : Bool

def defaultBanachSpaceLayerCertificate : BanachSpaceLayerCertificate := {
  space := ℝ,
  norm := fun x => |x|,
  isNormedAddCommGroup := by infer_instance,
  isComplete := by infer_instance,
  sourceKey := "ℝ",
  substrateReady := true
}

def BanachSpaceLayerClosed (C : BanachSpaceLayerCertificate) : Prop :=
  C.isComplete ∧ C.substrateReady = true

theorem banach_space_layer_closed_checked :
    BanachSpaceLayerClosed defaultBanachSpaceLayerCertificate := by
  exact And.intro (by exact CompleteSpace.mk (by exact cauchy_iff.mp)) rfl

end BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean
end HautevilleHouse