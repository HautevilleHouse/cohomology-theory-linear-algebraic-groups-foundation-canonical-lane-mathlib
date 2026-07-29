import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean

structure CohomologyProfile where
  degree : ℕ
  group : LinearAlgebraicGroup ℂ
  cohomologyType : Type (u+1)
  structure : Prop

def cohomologyProfile (p : ℕ) : CohomologyProfile := {
  degree := p
  group := linearAlgebraicGroup ℂ
  cohomologyType := Unit
  structure := True
}

theorem cohomology_profile_degree_checked (p : ℕ) :
    (cohomologyProfile p).degree = p := by rfl

end CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean
end HautevilleHouse