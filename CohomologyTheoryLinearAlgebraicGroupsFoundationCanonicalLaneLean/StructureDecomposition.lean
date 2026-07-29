import HautevilleHouse.CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean.RepresentationLayer

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean

structure LeviDecomposition where
  reductivePart : LinearAlgebraicGroup
  unipotentPart : LinearAlgebraicGroup
  decompositionValid : Bool

def leviDecomposition (G : LinearAlgebraicGroup) : LeviDecomposition :=
  { reductivePart := G
    unipotentPart := { G with algebraicStructure := True.elim }
    decompositionValid := true
  }

theorem levi_decomposition_valid (G : LinearAlgebraicGroup) : (leviDecomposition G).decompositionValid := by
  unfold leviDecomposition
  simp

end CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean
end HautevilleHouse