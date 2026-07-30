import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure ExportFactorAssemblyPackage where
  adaptorProteins : Type u
  rnaBindingMotifs : Type v
  nucleocytoplasmicShuttling : Prop
  cargoSpecificity : Prop

structure ExportFactorAssemblyEvidence (E : ExportFactorAssemblyPackage) where
  nucleocytoplasmicShuttlingClosed : E.nucleocytoplasmicShuttling
  cargoSpecificityClosed : E.cargoSpecificity

def ExportFactorAssemblyClosed (E : ExportFactorAssemblyPackage) : Prop :=
  E.nucleocytoplasmicShuttling ∧ E.cargoSpecificity

theorem export_factor_assembly_closed_from_evidence
    (E : ExportFactorAssemblyPackage) (Ev : ExportFactorAssemblyEvidence E) :
    ExportFactorAssemblyClosed E := by
  exact And.intro Ev.nucleocytoplasmicShuttlingClosed Ev.cargoSpecificityClosed

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
