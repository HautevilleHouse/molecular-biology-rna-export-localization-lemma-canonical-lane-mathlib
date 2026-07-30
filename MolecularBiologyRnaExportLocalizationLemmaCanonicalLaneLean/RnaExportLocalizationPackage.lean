import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaExportLocalizationPackage where
  cell : Type u
  nucleus : Set cell
  cytoplasm : Set cell
  rnaMolecule : Type v
  exportFactor : Type w
  nuclearPoreComplex : Prop
  exportCompetence : Prop
  localizationSignal : Prop
  exportFactorBinding : Prop
  nuclearRetention : Prop
  activeTransport : Prop

def RnaExportLocalizationClosed (P : RnaExportLocalizationPackage) : Prop :=
  P.nuclearPoreComplex ∧ P.exportCompetence ∧ P.localizationSignal ∧
  P.exportFactorBinding ∧ P.nuclearRetention ∧ P.activeTransport

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse