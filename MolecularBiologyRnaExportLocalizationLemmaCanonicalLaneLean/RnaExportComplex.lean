import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RnaExportComplex where
  carrierComplex : Type u
  nuclearPoreBinding : Prop
  crm1DockingSite : Prop
  ranGtpCycle : Prop
  adaptorProteins : List Type

structure RnaExportComplexEvidence (C : RnaExportComplex) where
  carrierComplexClosed : C.carrierComplex
  nuclearPoreBindingClosed : C.nuclearPoreBinding
  crm1DockingSiteClosed : C.crm1DockingSite
  ranGtpCycleClosed : C.ranGtpCycle

def RnaExportComplexClosed (C : RnaExportComplex) : Prop :=
  C.carrierComplex ∧ C.nuclearPoreBinding ∧ C.crm1DockingSite ∧ C.ranGtpCycle

theorem rna_export_complex_closed_from_evidence (C : RnaExportComplex) (E : RnaExportComplexEvidence C) :
    RnaExportComplexClosed C := by
  exact And.intro E.carrierComplexClosed
    (And.intro E.nuclearPoreBindingClosed
      (And.intro E.crm1DockingSiteClosed E.ranGtpCycleClosed))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
