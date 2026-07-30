import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure NuclearPoreComplexDynamicsPackage where
  nupComposition : Type u
  conformationalChanges : Prop
  transportCycle : Prop
  gatingMechanism : Prop

structure NuclearPoreComplexDynamicsEvidence (N : NuclearPoreComplexDynamicsPackage) where
  conformationalChangesClosed : N.conformationalChanges
  transportCycleClosed : N.transportCycle
  gatingMechanismClosed : N.gatingMechanism

def NuclearPoreComplexDynamicsClosed (N : NuclearPoreComplexDynamicsPackage) : Prop :=
  N.conformationalChanges ∧ N.transportCycle ∧ N.gatingMechanism

theorem nuclear_pore_complex_dynamics_closed_from_evidence
    (N : NuclearPoreComplexDynamicsPackage) (E : NuclearPoreComplexDynamicsEvidence N) :
    NuclearPoreComplexDynamicsClosed N := by
  exact And.intro E.conformationalChangesClosed
    (And.intro E.transportCycleClosed E.gatingMechanismClosed)

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
