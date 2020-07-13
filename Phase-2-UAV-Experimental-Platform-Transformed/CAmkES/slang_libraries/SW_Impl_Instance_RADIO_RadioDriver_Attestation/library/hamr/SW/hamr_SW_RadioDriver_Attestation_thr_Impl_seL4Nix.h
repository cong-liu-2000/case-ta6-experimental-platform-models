#ifndef SIREUM_H_hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix
#define SIREUM_H_hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix

#ifdef __cplusplus
extern "C" {
#endif

#include <types.h>

Unit hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix_send_data_Send(STACK_FRAME art_DataContent d);

Unit hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix_AutomationRequest_Send(STACK_FRAME art_DataContent d);

Unit hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix_OperatingRegion_Send(STACK_FRAME art_DataContent d);

Unit hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix_LineSearchTask_Send(STACK_FRAME art_DataContent d);

Unit hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix_am_response_Send(STACK_FRAME art_DataContent d);

void hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix_recv_data_Receive(STACK_FRAME Option_8E9F45 result);

void hamr_SW_RadioDriver_Attestation_thr_Impl_seL4Nix_am_request_Receive(STACK_FRAME Option_8E9F45 result);

#ifdef __cplusplus
}
#endif

#endif