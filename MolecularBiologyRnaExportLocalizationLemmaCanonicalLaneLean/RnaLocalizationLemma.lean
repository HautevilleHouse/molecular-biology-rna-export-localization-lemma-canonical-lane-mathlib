import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaLocalizationLemmaPackage where
  localizationCompetenceEstablished : Prop
  exportPathwayFunctional : Prop
  signalRecognitionVerified : Prop
  nuclearPoreEngaged : Prop
  cytoplasmicLocalizationAchieved : Prop

structure RnaLocalizationEvidence (L : RnaLocalizationLemmaPackage) where
  localizationCompetenceEstablishedClosed : L.localizationCompetenceEstablished
  exportPathwayFunctionalClosed : L.exportPathwayFunctional
  signalRecognitionVerifiedClosed : L.signalRecognitionVerified
  nuclearPoreEngagedClosed : L.nuclearPoreEngaged
  cytoplasmicLocalizationAchievedClosed : L.cytoplasmicLocalizationAchieved

def RnaLocalizationLemmaClosed (L : RnaLocalizationLemmaPackage) : Prop :=
  L.localizationCompetenceEstablished ∧ L.exportPathwayFunctional ∧ L.signalRecognitionVerified ∧ L.nuclearPoreEngaged ∧ L.cytoplasmicLocalizationAchieved

theorem rna_localization_lemma_closed_from_evidence (L : RnaLocalizationLemmaPackage) (E : RnaLocalizationEvidence L) : RnaLocalizationLemmaClosed L :=
  by
    exact And.intro E.localizationCompetenceEstablishedClosed
      (And.intro E.exportPathwayFunctionalClosed
        (And.intro E.signalRecognitionVerifiedClosed
          (And.intro E.nuclearPoreEngagedClosed E.cytoplasmicLocalizationAchievedClosed)))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse