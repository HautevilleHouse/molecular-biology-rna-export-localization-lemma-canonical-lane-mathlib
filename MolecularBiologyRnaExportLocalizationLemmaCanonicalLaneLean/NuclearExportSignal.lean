import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure NuclearExportSignal where
  sequenceMotif : String
  leucineRich : Prop
  crm1Recognition : Prop
  mutationalAnalysis : Prop

structure NuclearExportSignalEvidence (S : NuclearExportSignal) where
  sequenceMotifClosed : S.sequenceMotif
  leucineRichClosed : S.leucineRich
  crm1RecognitionClosed : S.crm1Recognition
  mutationalAnalysisClosed : S.mutationalAnalysis

def NuclearExportSignalClosed (S : NuclearExportSignal) : Prop :=
  S.sequenceMotif ∧ S.leucineRich ∧ S.crm1Recognition ∧ S.mutationalAnalysis

theorem nuclear_export_signal_closed_from_evidence (S : NuclearExportSignal) (E : NuclearExportSignalEvidence S) :
    NuclearExportSignalClosed S := by
  exact And.intro E.sequenceMotifClosed
    (And.intro E.leucineRichClosed
      (And.intro E.crm1RecognitionClosed E.mutationalAnalysisClosed))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
