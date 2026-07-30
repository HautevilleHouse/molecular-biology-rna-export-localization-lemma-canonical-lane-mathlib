import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure NuclearPoreComposition where
  nucleoporinSet : Type u
  fgRepeatNups : Prop
  scaffoldNups : Prop
  transmembraneNups : Prop
  centralChannel : Prop
  selectiveBarrier : Prop
  permeability : Prop

def NuclearPoreClosed (N : NuclearPoreComposition) : Prop :=
  N.fgRepeatNups ∧ N.scaffoldNups ∧ N.transmembraneNups ∧
  N.centralChannel ∧ N.selectiveBarrier ∧ N.permeability

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse