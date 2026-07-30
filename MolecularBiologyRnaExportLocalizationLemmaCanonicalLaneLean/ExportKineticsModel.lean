import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean

structure ExportRateConstant where
  kOn : ℝ
  kOff : ℝ
  kExport : ℝ
  kOnPositive : kOn > 0
  kOffPositive : kOff > 0
  kExportPositive : kExport > 0

structure ExportKineticsEvidence (K : ExportRateConstant) where
  kOnPositiveClosed : K.kOnPositive
  kOffPositiveClosed : K.kOffPositive
  kExportPositiveClosed : K.kExportPositive

def ExportKineticsClosed (K : ExportRateConstant) : Prop :=
  K.kOn > 0 ∧ K.kOff > 0 ∧ K.kExport > 0

theorem export_kinetics_closed_from_evidence (K : ExportRateConstant)
    (E : ExportKineticsEvidence K) : ExportKineticsClosed K := by
  exact And.intro E.kOnPositiveClosed (And.intro E.kOffPositiveClosed E.kExportPositiveClosed)

end MolecularBiologyRnaExportLocalizationLemmaCanonicalLaneLean
end HautevilleHouse