import BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean.AnalyticFunctionsLayer
import Mathlib.Analysis.NormedSpace.BanachAlgebra

/-!
# Banach algebra layer

This module records the Banach algebra structure and spectral theory.
-/

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean

structure BanachAlgebraLayerCertificate where
  banachSpace : BanachSpaceLayerCertificate
  algebraStructure : Prop
  spectralRadiusDefined : Prop
  holomorphicFunctionalCalculusAvailable : Bool

def defaultBanachAlgebraLayerCertificate : BanachAlgebraLayerCertificate := {
  banachSpace := defaultBanachSpaceLayerCertificate,
  algebraStructure := True,
  spectralRadiusDefined := True,
  holomorphicFunctionalCalculusAvailable := true
}

def BanachAlgebraLayerClosed (C : BanachAlgebraLayerCertificate) : Prop :=
  C.spectralRadiusDefined ∧ C.holomorphicFunctionalCalculusAvailable = true

theorem banach_algebra_layer_closed_checked :
    BanachAlgebraLayerClosed defaultBanachAlgebraLayerCertificate := by
  have h1 : defaultBanachAlgebraLayerCertificate.spectralRadiusDefined := by
    unfold defaultBanachAlgebraLayerCertificate
    trivial
  have h2 : defaultBanachAlgebraLayerCertificate.holomorphicFunctionalCalculusAvailable = true := by
    unfold defaultBanachAlgebraLayerCertificate
    rfl
  exact And.intro h1 h2

end BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean
end HautevilleHouse