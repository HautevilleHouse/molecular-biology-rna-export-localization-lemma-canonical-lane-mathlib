import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure ExportDockingStation where
  nuclearPoreComplex : Type u
  centralChannel : Prop
  hydrophobicMesh : Prop
  transportReceptors : List Type
  ranGradient : Prop

structure ExportDockingStationEvidence (D : ExportDockingStation) where
  nuclearPoreComplexClosed : D.nuclearPoreComplex
  centralChannelClosed : D.centralChannel
  hydrophobicMeshClosed : D.hydrophobicMesh
  ranGradientClosed : D.ranGradient

def ExportDockingStationClosed (D : ExportDockingStation) : Prop :=
  D.nuclearPoreComplex ∧ D.centralChannel ∧ D.hydrophobicMesh ∧ D.ranGradient

theorem export_docking_station_closed_from_evidence (D : ExportDockingStation) (E : ExportDockingStationEvidence D) :
    ExportDockingStationClosed D := by
  exact And.intro E.nuclearPoreComplexClosed
    (And.intro E.centralChannelClosed
      (And.intro E.hydrophobicMeshClosed E.ranGradientClosed))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
