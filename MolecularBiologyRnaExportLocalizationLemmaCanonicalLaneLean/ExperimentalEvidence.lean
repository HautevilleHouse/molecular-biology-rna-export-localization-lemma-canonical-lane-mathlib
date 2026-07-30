import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure ExperimentalEvidence where
  microscopy : Prop
  biochemicalFractionation : Prop
  rnaSequencing : Prop
  knockoutStudies : Prop
  reporterAssays : Prop
  crosslinking : Prop
  quantitativeProteomics : Prop

def ExperimentalEvidenceClosed (E : ExperimentalEvidence) : Prop :=
  E.microscopy ∧ E.biochemicalFractionation ∧ E.rnaSequencing ∧
  E.knockoutStudies ∧ E.reporterAssays ∧ E.crosslinking ∧ E.quantitativeProteomics

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse