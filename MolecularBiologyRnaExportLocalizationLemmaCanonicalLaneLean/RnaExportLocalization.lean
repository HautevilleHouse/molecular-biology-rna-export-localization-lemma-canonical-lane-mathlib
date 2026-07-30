import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure NuclearPoreComplex where
  nupComposition : Type
  transportCapacity : Prop
  gatingMechanism : Prop
  nupCompositionTerm : nupComposition
  transportCapacityTerm : transportCapacity
  gatingMechanismTerm : gatingMechanism

structure RnaExportLocalizationPackage where
  nuclearPore : NuclearPoreComplex
  rnaSpecies : Type
  exportReceptor : Type
  localizationSignal : Prop
  exportCompetence : Prop
  localizationSignalTerm : localizationSignal
  exportCompetenceTerm : exportCompetence

structure RnaExportLocalizationEvidence (P : RnaExportLocalizationPackage) where
  localizationSignalClosed : P.localizationSignal
  exportCompetenceClosed : P.exportCompetence

def RnaExportLocalizationClosed (P : RnaExportLocalizationPackage) : Prop :=
  P.localizationSignal ∧ P.exportCompetence

theorem rna_export_localization_closed_from_evidence (P : RnaExportLocalizationPackage)
    (E : RnaExportLocalizationEvidence P) : RnaExportLocalizationClosed P := by
  exact And.intro E.localizationSignalClosed E.exportCompetenceClosed

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse