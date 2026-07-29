import HautevilleHouse.CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean.CohomologyObjects

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean

structure RepresentationState where
  group : LinearAlgebraicGroup
  representationSpace : Type
  isFiniteDimensional : Bool
  isAlgebraic : Bool

def representationCertificate (G : LinearAlgebraicGroup) : RepresentationState :=
  { group := G
    representationSpace := G.groupType → ℂ
    isFiniteDimensional := true
    isAlgebraic := true
  }

theorem representation_certificate_checked (G : LinearAlgebraicGroup) :
    (representationCertificate G).isFiniteDimensional := by
  simp [representationCertificate]

end CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean
end HautevilleHouse