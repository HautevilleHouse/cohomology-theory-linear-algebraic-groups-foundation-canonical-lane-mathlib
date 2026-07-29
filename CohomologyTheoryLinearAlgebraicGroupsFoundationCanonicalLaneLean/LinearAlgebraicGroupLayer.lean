import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean

structure LinearAlgebraicGroup (k : Type u) [Field k] where
  carrier : Type u
  [isGroup : Group carrier]
  [isAlgebraic : AlgebraicScheme Carrier]
  multiplication : carrier × carrier → carrier
  inverse : carrier → carrier
  identity : carrier

structure MorphismOfGroups (G H : LinearAlgebraicGroup k) where
  map : G → H
  respectsMultiplication : ∀ x y, map (x * y) = map x * map y
  respectsIdentity : map 1 = 1

def LinearAlgebraicGroups (k : Type u) [Field k] : Type (u + 1) :=
  Σ (G : LinearAlgebraicGroup k), True

end CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean
end HautevilleHouse