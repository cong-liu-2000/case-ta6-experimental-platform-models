#include <CASE_Filter_ARes_thr_Impl_Impl_api.h>
#include <ext.h>

// This file will not be overwritten so is safe to edit
U8 fltAutomationResponse[262144/8];

Unit hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl_initialise_(
  STACK_FRAME
  hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl this) {
 DeclNewStackFrame(caller, "CASE_Filter_ARes_thr_Impl_Impl_api.c", "", "hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl_initialise_", 0);

 // example api usage
}

Unit hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl_finalise_(
  STACK_FRAME
  hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl this) {
  DeclNewStackFrame(caller, "CASE_Filter_ARes_thr_Impl_Impl_api.c", "", "hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl_finalise_", 0);

  // example finalise method
}

Unit hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl_timeTriggered_(
  STACK_FRAME
  hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl this) {
  DeclNewStackFrame(caller, "CASE_Filter_ARes_thr_Impl_Impl_api.c", "", "hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl_timeTriggered_", 0);

  size_t numBits = 0;
  bool isAR = api_get_filter_in__hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl(SF this, &numBits, fltAutomationResponse);
  if (isAR) {
    api_send_filter_out__hamr_SW_AUGUST_CASE_Filter_ARes_thr_Impl_Impl(SF this, numBits, fltAutomationResponse);
  }
}
