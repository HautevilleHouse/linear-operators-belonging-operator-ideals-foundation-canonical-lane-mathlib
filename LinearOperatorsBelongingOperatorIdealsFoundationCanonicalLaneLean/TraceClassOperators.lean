import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure TraceClassOperator where
  underlying : Type → Type
  trace : (underlying ℝ) → ℝ
  traceProperty : Prop
  tracePropertyClosed : traceProperty
  linearity : Prop
  linearityClosed : linearity

def traceClassOperatorClosed (T : TraceClassOperator) : Prop :=
  T.traceProperty ∧ T.linearity

theorem trace_class_operator_closed (T : TraceClassOperator) : traceClassOperatorClosed T :=
  And.intro T.tracePropertyClosed T.linearityClosed

structure TraceClassIdeal where
  operators : Set (TraceClassOperator)
  idealCondition : Prop
  idealConditionClosed : idealCondition
  traceFinite : Prop
  traceFiniteClosed : traceFinite

def traceClassIdealClosed (I : TraceClassIdeal) : Prop :=
  I.idealCondition ∧ I.traceFinite

theorem trace_class_ideal_closed (I : TraceClassIdeal) : traceClassIdealClosed I :=
  And.intro I.idealConditionClosed I.traceFiniteClosed

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse