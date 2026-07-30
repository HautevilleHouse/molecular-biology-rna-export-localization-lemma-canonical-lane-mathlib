import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaExportCompetencePackage where
  rnaMaturity : Prop
  exportCofactorRecruitment : Prop
  remodellingEvents : Prop
  qualityControlCheckpoints : Prop
  exportCompetenceMarkers : Prop

structure RnaExportCompetenceEvidence (C : RnaExportCompetencePackage) where
  rnaMaturityClosed : C.rnaMaturity
  exportCofactorRecruitmentClosed : C.exportCofactorRecruitment
  remodellingEventsClosed : C.remodellingEvents
  qualityControlCheckpointsClosed : C.qualityControlCheckpoints
  exportCompetenceMarkersClosed : C.exportCompetenceMarkers

def RnaExportCompetenceClosed (C : RnaExportCompetencePackage) : Prop :=
  C.rnaMaturity ∧ C.exportCofactorRecruitment ∧ C.remodellingEvents ∧ C.qualityControlCheckpoints ∧ C.exportCompetenceMarkers

theorem rna_export_competence_closed_from_evidence (C : RnaExportCompetencePackage) (E : RnaExportCompetenceEvidence C) : RnaExportCompetenceClosed C :=
  by
    exact And.intro E.rnaMaturityClosed
      (And.intro E.exportCofactorRecruitmentClosed
        (And.intro E.remodellingEventsClosed
          (And.intro E.qualityControlCheckpointsClosed E.exportCompetenceMarkersClosed)))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse