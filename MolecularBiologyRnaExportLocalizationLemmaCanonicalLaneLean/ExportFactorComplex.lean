import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure ExportFactorComplex where
  exportFactor : Type u
  ranGtpBound : Prop
  nxf1 : Prop
  nxt1 : Prop
  rnaBinding : Prop
  conformationalChange : Prop
  cargoRecognition : Prop

def ExportFactorComplexClosed (C : ExportFactorComplex) : Prop :=
  C.ranGtpBound ∧ C.nxf1 ∧ C.nxt1 ∧ C.rnaBinding ∧ C.conformationalChange ∧ C.cargoRecognition

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse