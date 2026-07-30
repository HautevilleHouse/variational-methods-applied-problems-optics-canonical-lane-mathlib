import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OpticsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalMethodsAppliedProblemsOpticsCanonicalLaneLean
end HautevilleHouse