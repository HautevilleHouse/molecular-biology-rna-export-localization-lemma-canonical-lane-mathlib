import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RnaExportLocalizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse