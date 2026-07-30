import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaLocalizationPathway where
  transcriptionSite : Type u
  splicingCompletion : Prop
  recruitmentExportFactors : Prop
  dockingNuclearPore : Prop
  translocation : Prop
  cytoplasmicRelease : Prop
  localizationSignalRecognition : Prop

def RnaLocalizationPathwayClosed (P : RnaLocalizationPathway) : Prop :=
  P.splicingCompletion ∧ P.recruitmentExportFactors ∧
  P.dockingNuclearPore ∧ P.translocation ∧ P.cytoplasmicRelease ∧
  P.localizationSignalRecognition

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse