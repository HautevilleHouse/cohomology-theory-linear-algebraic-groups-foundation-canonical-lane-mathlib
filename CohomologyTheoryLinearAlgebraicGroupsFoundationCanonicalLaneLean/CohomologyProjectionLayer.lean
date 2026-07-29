import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean

structure CohomologyProjectionState where
  algebraicGroup : LinearAlgebraicGroup ℂ
  cohomologyProfile : CohomologyProfile
  projectionApplied : Bool
  resultRecorded : Bool

def cohomologyProjection (S : CohomologyProjectionState) : CohomologyProjectionState :=
  { S with
    projectionApplied := true
    resultRecorded := true }

theorem cohomology_projection_idempotent (S : CohomologyProjectionState) :
    cohomologyProjection (cohomologyProjection S) = cohomologyProjection S := by
  cases S; rfl

end CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean
end HautevilleHouse