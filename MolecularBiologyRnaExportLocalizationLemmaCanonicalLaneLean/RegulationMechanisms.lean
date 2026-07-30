import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RegulationMechanisms where
  phosphorylation : Prop
  ubiquitination : Prop
  sumoylation : Prop
  alternativeSplicing : Prop
  rnaModifications : Prop
  feedbackLoops : Prop
  stressResponse : Prop

def RegulationClosed (R : RegulationMechanisms) : Prop :=
  R.phosphorylation ∧ R.ubiquitination ∧ R.sumoylation ∧
  R.alternativeSplicing ∧ R.rnaModifications ∧ R.feedbackLoops ∧ R.stressResponse

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse