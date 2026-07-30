import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaExportLocalizationPackage where
  nuclearPoreComplex : Type u
  exportFactor : Type v
  cargoRna : Type w
  localizationProcess : Prop
  nuclearRetention : Prop
  cytoplasmicAccumulation : Prop

structure RnaExportLocalizationEvidence (P : RnaExportLocalizationPackage) where
  localizationProcessClosed : P.localizationProcess
  nuclearRetentionClosed : P.nuclearRetention
  cytoplasmicAccumulationClosed : P.cytoplasmicAccumulation

def RnaExportLocalizationClosed (P : RnaExportLocalizationPackage) : Prop :=
  P.localizationProcess ∧ P.nuclearRetention ∧ P.cytoplasmicAccumulation

theorem rna_export_localization_closed_from_evidence
    (P : RnaExportLocalizationPackage) (E : RnaExportLocalizationEvidence P) :
    RnaExportLocalizationClosed P := by
  exact And.intro E.localizationProcessClosed
    (And.intro E.nuclearRetentionClosed E.cytoplasmicAccumulationClosed)

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
