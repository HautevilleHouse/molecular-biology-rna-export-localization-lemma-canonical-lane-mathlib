import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure ShuttlingFactor where
  nuclearImportSignal : Prop
  nuclearExportSignal : Prop
  cytoplasmicLocalization : Prop
  importSignalTerm : nuclearImportSignal
  exportSignalTerm : nuclearExportSignal
  cytoplasmicLocalizationTerm : cytoplasmicLocalization

structure NucleocytoplasmicShuttlingCycle where
  factor : ShuttlingFactor
  ranGtpGradient : Prop
  energyDependence : Prop
  ranGtpGradientTerm : ranGtpGradient
  energyDependenceTerm : energyDependence

def ShuttlingCycleClosed (C : NucleocytoplasmicShuttlingCycle) : Prop :=
  C.ranGtpGradient ∧ C.energyDependence

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse