#ifndef SIREUM_H_hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix
#define SIREUM_H_hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix

#ifdef __cplusplus
extern "C" {
#endif

#include <types.h>

Unit hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix_AutomationRequest_out_Send(STACK_FRAME art_DataContent d);

Unit hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix_OperatingRegion_out_Send(STACK_FRAME art_DataContent d);

Unit hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix_LineSearchTask_out_Send(STACK_FRAME art_DataContent d);

void hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix_trusted_ids_Receive(STACK_FRAME Option_8E9F45 result);

void hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix_AutomationRequest_in_Receive(STACK_FRAME Option_8E9F45 result);

void hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix_OperatingRegion_in_Receive(STACK_FRAME Option_8E9F45 result);

void hamr_SW_AUGUST_CASE_AttestationGate_thr_Impl_seL4Nix_LineSearchTask_in_Receive(STACK_FRAME Option_8E9F45 result);

#ifdef __cplusplus
}
#endif

#endif