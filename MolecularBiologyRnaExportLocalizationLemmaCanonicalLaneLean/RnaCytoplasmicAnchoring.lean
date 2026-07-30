import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaCytoplasmicAnchoring where
  anchoringProtein : Type u
  cytoplasmicBindingSite : Prop
  localizedTranslation : Prop
  decayAvoidance : Prop

structure RnaCytoplasmicAnchoringEvidence (A : RnaCytoplasmicAnchoring) where
  anchoringProteinClosed : A.anchoringProtein
  cytoplasmicBindingSiteClosed : A.cytoplasmicBindingSite
  localizedTranslationClosed : A.localizedTranslation
  decayAvoidanceClosed : A.decayAvoidance

def RnaCytoplasmicAnchoringClosed (A : RnaCytoplasmicAnchoring) : Prop :=
  A.anchoringProtein ∧ A.cytoplasmicBindingSite ∧ A.localizedTranslation ∧ A.decayAvoidance

theorem rna_cytoplasmic_anchoring_closed_from_evidence (A : RnaCytoplasmicAnchoring) (E : RnaCytoplasmicAnchoringEvidence A) :
    RnaCytoplasmicAnchoringClosed A := by
  exact And.intro E.anchoringProteinClosed
    (And.intro E.cytoplasmicBindingSiteClosed
      (And.intro E.localizedTranslationClosed E.decayAvoidanceClosed))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
