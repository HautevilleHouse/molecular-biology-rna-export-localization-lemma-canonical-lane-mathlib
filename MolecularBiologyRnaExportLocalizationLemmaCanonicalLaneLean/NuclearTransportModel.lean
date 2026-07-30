import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure TransportReceptor where
  receptorProtein : Type
  cargoBinding : Prop
  ranGtpDependency : Prop
  cargoBindingTerm : cargoBinding
  ranGtpDependencyTerm : ranGtpDependency

structure NuclearTransportPathway where
  receptor : TransportReceptor
  nuclearEnvelope : Type
  importCycle : Prop
  exportCycle : Prop
  importCycleTerm : importCycle
  exportCycleTerm : exportCycle

def CoreTransportModel (T : NuclearTransportPathway) : Prop :=
  T.importCycle ∧ T.exportCycle

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse