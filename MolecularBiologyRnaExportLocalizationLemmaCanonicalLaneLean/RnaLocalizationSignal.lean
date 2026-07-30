import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaLocalizationSignalPackage where
  signalSequence : Prop
  signalRecognitionProteins : Prop
  signalDependentExport : Prop
  localizationCompetence : Prop
  signalConservation : Prop

structure RnaLocalizationSignalEvidence (S : RnaLocalizationSignalPackage) where
  signalSequenceClosed : S.signalSequence
  signalRecognitionProteinsClosed : S.signalRecognitionProteins
  signalDependentExportClosed : S.signalDependentExport
  localizationCompetenceClosed : S.localizationCompetence
  signalConservationClosed : S.signalConservation

def RnaLocalizationSignalClosed (S : RnaLocalizationSignalPackage) : Prop :=
  S.signalSequence ∧ S.signalRecognitionProteins ∧ S.signalDependentExport ∧ S.localizationCompetence ∧ S.signalConservation

theorem rna_localization_signal_closed_from_evidence (S : RnaLocalizationSignalPackage) (E : RnaLocalizationSignalEvidence S) : RnaLocalizationSignalClosed S :=
  by
    exact And.intro E.signalSequenceClosed
      (And.intro E.signalRecognitionProteinsClosed
        (And.intro E.signalDependentExportClosed
          (And.intro E.localizationCompetenceClosed E.signalConservationClosed)))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse