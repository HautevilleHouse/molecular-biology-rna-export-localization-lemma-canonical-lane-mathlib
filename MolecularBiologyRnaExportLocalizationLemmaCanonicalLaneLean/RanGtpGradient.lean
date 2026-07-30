import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure RanGtpGradientPackage where
  ranGtpConcentration : Type u
  nuclearEnvelope : Type v
  gradientMaintenance : Prop
  directionality : Prop

structure RanGtpGradientEvidence (R : RanGtpGradientPackage) where
  gradientMaintenanceClosed : R.gradientMaintenance
  directionalityClosed : R.directionality

def RanGtpGradientClosed (R : RanGtpGradientPackage) : Prop :=
  R.gradientMaintenance ∧ R.directionality

theorem ran_gtp_gradient_closed_from_evidence
    (R : RanGtpGradientPackage) (E : RanGtpGradientEvidence R) :
    RanGtpGradientClosed R := by
  exact And.intro E.gradientMaintenanceClosed E.directionalityClosed

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse
