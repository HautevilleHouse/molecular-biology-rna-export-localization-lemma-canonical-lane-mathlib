import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaBindingRegion where
  sequenceMotif : String
  bindingAffinity : Prop
  specificity : Prop
  bindingAffinityTerm : bindingAffinity
  specificityTerm : specificity

structure RnaExportAdaptor where
  adaptorProtein : Type
  rnaRecognition : RnaBindingRegion
  adaptorFunction : Prop
  adaptorFunctionTerm : adaptorFunction

def RnaExportAdaptorClosed (A : RnaExportAdaptor) : Prop :=
  A.adaptorFunction

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse