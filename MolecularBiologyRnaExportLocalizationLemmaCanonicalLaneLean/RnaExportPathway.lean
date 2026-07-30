import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaExportPathwayPackage where
  nuclearEnvelopeComponents : Prop
  exportReceptors : Prop
  ranGtpCycle : Prop
  cargoRecognition : Prop
  translocationChannel : Prop

structure RnaExportPathwayEvidence (P : RnaExportPathwayPackage) where
  nuclearEnvelopeComponentsClosed : P.nuclearEnvelopeComponents
  exportReceptorsClosed : P.exportReceptors
  ranGtpCycleClosed : P.ranGtpCycle
  cargoRecognitionClosed : P.cargoRecognition
  translocationChannelClosed : P.translocationChannel

def RnaExportPathwayClosed (P : RnaExportPathwayPackage) : Prop :=
  P.nuclearEnvelopeComponents ∧ P.exportReceptors ∧ P.ranGtpCycle ∧ P.cargoRecognition ∧ P.translocationChannel

theorem rna_export_pathway_closed_from_evidence (P : RnaExportPathwayPackage) (E : RnaExportPathwayEvidence P) : RnaExportPathwayClosed P :=
  by
    exact And.intro E.nuclearEnvelopeComponentsClosed
      (And.intro E.exportReceptorsClosed
        (And.intro E.ranGtpCycleClosed
          (And.intro E.cargoRecognitionClosed E.translocationChannelClosed)))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse