#ifndef SIREUM_TYPE_H_hamr_SW_AUGUST_RadioDriver_Attestation_thr_Impl_Bridge_Api
#define SIREUM_TYPE_H_hamr_SW_AUGUST_RadioDriver_Attestation_thr_Impl_Bridge_Api

#ifdef __cplusplus
extern "C" {
#endif

#include <misc.h>

// hamr.SW_AUGUST.RadioDriver_Attestation_thr_Impl_Bridge.Api

typedef struct hamr_SW_AUGUST_RadioDriver_Attestation_thr_Impl_Bridge_Api *hamr_SW_AUGUST_RadioDriver_Attestation_thr_Impl_Bridge_Api;
struct hamr_SW_AUGUST_RadioDriver_Attestation_thr_Impl_Bridge_Api {
  TYPE type;
  Z id;
  Z trusted_ids_Id;
  Z recv_data_Id;
  Z send_data_Id;
  Z AutomationRequest_Id;
  Z OperatingRegion_Id;
  Z LineSearchTask_Id;
};

#define DeclNewhamr_SW_AUGUST_RadioDriver_Attestation_thr_Impl_Bridge_Api(x) struct hamr_SW_AUGUST_RadioDriver_Attestation_thr_Impl_Bridge_Api x = { .type = Thamr_SW_AUGUST_RadioDriver_Attestation_thr_Impl_Bridge_Api }

#ifdef __cplusplus
}
#endif

#endif