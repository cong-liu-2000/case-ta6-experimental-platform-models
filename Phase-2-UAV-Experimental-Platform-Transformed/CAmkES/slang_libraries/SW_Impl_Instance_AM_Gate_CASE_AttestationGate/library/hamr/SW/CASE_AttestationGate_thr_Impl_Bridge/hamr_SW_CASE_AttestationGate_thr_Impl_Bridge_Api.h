#ifndef SIREUM_H_hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api
#define SIREUM_H_hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api

#ifdef __cplusplus
extern "C" {
#endif

#include <types.h>

// hamr.SW.CASE_AttestationGate_thr_Impl_Bridge.Api

#define hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_id_(this) ((this)->id)
#define hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_trusted_ids_Id_(this) ((this)->trusted_ids_Id)
#define hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_AutomationRequest_in_Id_(this) ((this)->AutomationRequest_in_Id)
#define hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_AutomationRequest_out_Id_(this) ((this)->AutomationRequest_out_Id)
#define hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_OperatingRegion_in_Id_(this) ((this)->OperatingRegion_in_Id)
#define hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_OperatingRegion_out_Id_(this) ((this)->OperatingRegion_out_Id)
#define hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_LineSearchTask_in_Id_(this) ((this)->LineSearchTask_in_Id)
#define hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_LineSearchTask_out_Id_(this) ((this)->LineSearchTask_out_Id)

B hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api__eq(hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api other);
inline B hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api__ne(hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api other) {
  return !hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api__eq(this, other);
};
void hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_string_(STACK_FRAME String result, hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this);
void hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_cprint(hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, B isOut);

inline B hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api__is(STACK_FRAME void* this) {
  return ((hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api) this)->type == Thamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api;
}

inline hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api__as(STACK_FRAME void *this) {
  if (hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api__is(CALLER this)) return (hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api) this;
  fprintf(stderr, "Invalid case from %s to hamr.SW.CASE_AttestationGate_thr_Impl_Bridge.Api.", TYPE_string_(this));
  sfAbortImpl(CALLER "");
  abort();
}

void hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_apply(STACK_FRAME hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, Z id, Z trusted_ids_Id, Z AutomationRequest_in_Id, Z AutomationRequest_out_Id, Z OperatingRegion_in_Id, Z OperatingRegion_out_Id, Z LineSearchTask_in_Id, Z LineSearchTask_out_Id);

Unit hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_logInfo_(STACK_FRAME hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, String msg);

Unit hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_logDebug_(STACK_FRAME hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, String msg);

Unit hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_logError_(STACK_FRAME hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, String msg);

void hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_gettrusted_ids_(STACK_FRAME Option_30119F result, hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this);

void hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_getAutomationRequest_in_(STACK_FRAME Option_30119F result, hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this);

Unit hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_sendAutomationRequest_out_(STACK_FRAME hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, IS_C4F575 value);

void hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_getOperatingRegion_in_(STACK_FRAME Option_30119F result, hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this);

Unit hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_sendOperatingRegion_out_(STACK_FRAME hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, IS_C4F575 value);

void hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_getLineSearchTask_in_(STACK_FRAME Option_30119F result, hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this);

Unit hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api_sendLineSearchTask_out_(STACK_FRAME hamr_SW_CASE_AttestationGate_thr_Impl_Bridge_Api this, IS_C4F575 value);

#ifdef __cplusplus
}
#endif

#endif