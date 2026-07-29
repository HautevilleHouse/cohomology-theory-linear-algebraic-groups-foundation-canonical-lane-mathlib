import canonicalLaneMathlib.AdmissibleClass

noncomputable section

namespace HautevilleHouse
namespace CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def CohomologyAdmittedClosure (A : AdmissibleClass) : Prop :=
  ConstrainedTheoremClosure A ∧ cohomologyCertificate.admittedCohomologyClosure = true

theorem cohomology_admitted_closure_checked (A : AdmissibleClass) :
    CohomologyAdmittedClosure A := by
  exact ⟨constrained_theorem_closure A, rfl⟩

end CohomologyTheoryLinearAlgebraicGroupsFoundationCanonicalLaneLean
end HautevilleHouse