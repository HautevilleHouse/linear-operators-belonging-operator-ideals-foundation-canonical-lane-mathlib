import LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean

structure OperatorIdealAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  operatorClass : Type
  idealMembership : Prop
  membershipProved : Prop
  conclusion : membershipProved

def OperatorIdealWitnessClosed (O : OperatorIdealAdmittedObject) : Prop :=
  O.membershipProved

end LinearOperatorsBelongingOperatorIdealsFoundationCanonicalLaneLean
end HautevilleHouse