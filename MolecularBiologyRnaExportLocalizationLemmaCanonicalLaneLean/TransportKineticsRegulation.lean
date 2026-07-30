import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure TransportKineticsRegulationPackage where
  exportKinetics : Type u
  regulatoryFactors : Type v
  rateControl : Prop
  feedbackMechanisms : Prop

structure TransportKineticsRegulationEvidence (T : TransportKineticsRegulationPackage) where
  rateControlClosed : T.rateControl
  feedbackMechanismsClosed : T.feedbackMechanisms

def TransportKineticsRegulationClosed (T : TransportKineticsRegulationPackage) : Prop :=
  T.rateControl ∧ T.feedbackMechanisms

theorem transport_kinetics_regulation_closed_from_evidence
    (T : TransportKineticsRegulationPackage) (E : TransportKineticsRegulationEvidence T) :
    TransportKineticsRegulationClosed T := by
  exact And.intro E.rateControlClosed E.feedbackMechanismsClosed

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
