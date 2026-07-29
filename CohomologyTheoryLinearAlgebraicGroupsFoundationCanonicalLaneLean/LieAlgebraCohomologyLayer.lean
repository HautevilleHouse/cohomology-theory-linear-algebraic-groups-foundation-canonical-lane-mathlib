import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean

structure LieAlgebra (k : Type u) [Field k] where
  V : Type u
  [addCommGroup : AddCommGroup V]
  bracket : V → V → V
  jacobiIdentity : ∀ x y z, bracket x (bracket y z) + bracket y (bracket z x) + bracket z (bracket x y) = 0
  alternating : ∀ x, bracket x x = 0

structure ChevalleyEilenbergComplex (𝔤 : LieAlgebra k) where
  cochains (n : ℕ) : Type u
  differential (n : ℕ) : cochains n → cochains (n+1)
  ddZero (n : ℕ) : differential (n+1) ∘ differential n = 0

def LieAlgebraCohomology (𝔤 : LieAlgebra k) (n : ℕ) : AddCommGroup := by
  admit

theorem whiteheadsLemma (𝔤 : LieAlgebra k) [FiniteDimensional k 𝔤.V] [Semisimple 𝔤] :
    H²(𝔤, k) = 0 := by
  admit

end CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean
end HautevilleHouse