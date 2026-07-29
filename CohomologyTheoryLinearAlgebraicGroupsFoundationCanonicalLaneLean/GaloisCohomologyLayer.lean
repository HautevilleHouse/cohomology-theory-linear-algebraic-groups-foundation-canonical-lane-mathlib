import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean

structure GaloisModule (k : Type u) [Field k] where
  M : Type u
  [addCommGroup : AddCommGroup M]
  action : GaloisGroup k → M → M

structure GaloisCohomology (k : Type u) [Field k] where
  degree : ℕ
  module : GaloisModule k
  cocycles : Set (GaloisGroup k ^ degree → M)
  coboundaries : Set (GaloisGroup k ^ degree → M)
  cohomologyGroup : AddCommGroup (Quotient (AddSubgroup.closure cocycles) (AddSubgroup.closure coboundaries))

theorem galois_cohomology_vanishing (k : Type u) [Field k] (G : LinearAlgebraicGroup k) :
    H¹(GaloisGroup k / GaloisGroup k, G(k_sep)) = 0 := by
  admit

end CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean
end HautevilleHouse