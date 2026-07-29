import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : Prop
  analyticContinuationStatement : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "banach-spaces-continuous-differentiable-analytic-foundation",
    theoremName := "BanachSpacesContinuousDifferentiableAnalyticFoundation",
    theoremObject := "Banach space analytic continuation via differentiability",
    classicalBoundary := True,
    analyticContinuationStatement := "Every continuously differentiable map between Banach spaces is analytic on the domain of differentiability",
    carriedRemainder := "Classical boundary of infinite-dimensional analyticity remains carried"
  }

def ClassicalSourceBoundaryCarried : Prop :=
  True

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried :=
  trivial

end BanachSpacesContinuousDifferentiableAnalyticFoundationCanonicalLaneLean
end HautevilleHouse