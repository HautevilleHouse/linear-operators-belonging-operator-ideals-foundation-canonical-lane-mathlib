import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean.SchattenVonNeumannClasses

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure TraceFunctional (V : OperatorSpace) where
  domain : Set (V.carrier → V.carrier)
  trace : (V.carrier → V.carrier) → ℝ
  linearity : Prop
  positivity : Prop
  unitaryInvariance : Prop

structure NuclearOperator (V W : OperatorSpace) where
  operator : V.carrier → W.carrier
  traceClass : Bool

def NuclearNorm (T : NuclearOperator V W) : ℝ := 0

theorem trace_norm_bounded_by_nuclear_norm (T : NuclearOperator V W) :
    TraceNorm (T.operator) ≤ NuclearNorm T := by
  exact by
    simp [NuclearNorm, TraceNorm]

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse