import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaLocalizationCargo where
  rnaTranscript : Type u
  zipcodeBindingProtein : Prop
  motorProteinRecruitment : Prop
  cytoskeletalTransport : Prop
  localizationElement : String

structure RnaLocalizationCargoEvidence (C : RnaLocalizationCargo) where
  rnaTranscriptClosed : C.rnaTranscript
  zipcodeBindingProteinClosed : C.zipcodeBindingProtein
  motorProteinRecruitmentClosed : C.motorProteinRecruitment
  cytoskeletalTransportClosed : C.cytoskeletalTransport

def RnaLocalizationCargoClosed (C : RnaLocalizationCargo) : Prop :=
  C.rnaTranscript ∧ C.zipcodeBindingProtein ∧ C.motorProteinRecruitment ∧ C.cytoskeletalTransport

theorem rna_localization_cargo_closed_from_evidence (C : RnaLocalizationCargo) (E : RnaLocalizationCargoEvidence C) :
    RnaLocalizationCargoClosed C := by
  exact And.intro E.rnaTranscriptClosed
    (And.intro E.zipcodeBindingProteinClosed
      (And.intro E.motorProteinRecruitmentClosed E.cytoskeletalTransportClosed))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
