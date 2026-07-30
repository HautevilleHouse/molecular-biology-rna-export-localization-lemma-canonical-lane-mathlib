import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure NuclearPoreComplexPackage where
  poreComposition : Prop
  centralChannel : Prop
  fgNups : Prop
  permeabilityBarrier : Prop
  dockinPlatform : Prop

structure NuclearPoreComplexEvidence (N : NuclearPoreComplexPackage) where
  poreCompositionClosed : N.poreComposition
  centralChannelClosed : N.centralChannel
  fgNupsClosed : N.fgNups
  permeabilityBarrierClosed : N.permeabilityBarrier
  dockinPlatformClosed : N.dockinPlatform

def NuclearPoreComplexClosed (N : NuclearPoreComplexPackage) : Prop :=
  N.poreComposition ∧ N.centralChannel ∧ N.fgNups ∧ N.permeabilityBarrier ∧ N.dockinPlatform

theorem nuclear_pore_complex_closed_from_evidence (N : NuclearPoreComplexPackage) (E : NuclearPoreComplexEvidence N) : NuclearPoreComplexClosed N :=
  by
    exact And.intro E.poreCompositionClosed
      (And.intro E.centralChannelClosed
        (And.intro E.fgNupsClosed
          (And.intro E.permeabilityBarrierClosed E.dockinPlatformClosed)))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse