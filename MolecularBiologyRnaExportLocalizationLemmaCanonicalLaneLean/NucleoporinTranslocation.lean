import MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean.NuclearExportComplex

/-!
# Nucleoporin Translocation Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure NucleoporinTranslocationPackage {C : NuclearExportComplexPackage}
    (Nuc : NuclearExportComplexPackage) where
  nupComplex : Type u
  hydrophobicInteraction : Prop
  cargoTranslocationThroughPore : Prop
  kineticProofreading : Prop

structure NucleoporinTranslocationEvidence {C : NuclearExportComplexPackage}
    {Nuc : NuclearExportComplexPackage} (T : NucleoporinTranslocationPackage C) where
  nupComplexClosed : T.nupComplex
  hydrophobicInteractionClosed : T.hydrophobicInteraction
  cargoTranslocationThroughPoreClosed : T.cargoTranslocationThroughPore
  kineticProofreadingClosed : T.kineticProofreading

def NucleoporinTranslocationClosed {C : NuclearExportComplexPackage}
    (T : NucleoporinTranslocationPackage C) : Prop :=
  T.nupComplex ∧ T.hydrophobicInteraction ∧ T.cargoTranslocationThroughPore ∧ T.kineticProofreading

theorem nucleoporin_translocation_closed_from_evidence
    {C : NuclearExportComplexPackage} (T : NucleoporinTranslocationPackage C)
    (E : NucleoporinTranslocationEvidence T) : NucleoporinTranslocationClosed T := by
  exact And.intro E.nupComplexClosed
    (And.intro E.hydrophobicInteractionClosed
      (And.intro E.cargoTranslocationThroughPoreClosed E.kineticProofreadingClosed))

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse