import MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

def ConstrainedRnaExportLocalizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_export_localization_endgame (A : AdmissibleClass) :
    ConstrainedRnaExportLocalizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse