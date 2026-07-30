import MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Nuclear Export Complex Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure NuclearExportComplexPackage where
  receptorExportin : Type u
  cargoRna : Type v
  ranGtpBound : Prop
  bindingAffinityExportin : Prop
  cargoRecognitionDomain : Prop

structure NuclearExportComplexEvidence (C : NuclearExportComplexPackage) where
  ranGtpBoundClosed : C.ranGtpBound
  bindingAffinityExportinClosed : C.bindingAffinityExportin
  cargoRecognitionDomainClosed : C.cargoRecognitionDomain

def NuclearExportComplexClosed (C : NuclearExportComplexPackage) : Prop :=
  C.ranGtpBound ∧ C.bindingAffinityExportin ∧ C.cargoRecognitionDomain

theorem nuclear_export_complex_closed_from_evidence (C : NuclearExportComplexPackage)
    (E : NuclearExportComplexEvidence C) : NuclearExportComplexClosed C := by
  exact And.intro E.ranGtpBoundClosed
    (And.intro E.bindingAffinityExportinClosed E.cargoRecognitionDomainClosed)

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse