#ifndef SIREUM_TYPE_H_hamr_SW_CASE_Filter_OR_thr_Impl_Bridge_EntryPoints
#define SIREUM_TYPE_H_hamr_SW_CASE_Filter_OR_thr_Impl_Bridge_EntryPoints

#ifdef __cplusplus
extern "C" {
#endif

#include <misc.h>

// hamr.SW.CASE_Filter_OR_thr_Impl_Bridge.EntryPoints
#include <type-org_sireum_Option_9AF35E.h>
#include <type-hamr_SW_CASE_Filter_OR_thr_Impl_Impl.h>
#include <type-org_sireum_IS_82ABD8.h>
#include <type-org_sireum_IS_82ABD8.h>
#include <type-org_sireum_IS_82ABD8.h>
#include <type-org_sireum_IS_82ABD8.h>

typedef struct hamr_SW_CASE_Filter_OR_thr_Impl_Bridge_EntryPoints *hamr_SW_CASE_Filter_OR_thr_Impl_Bridge_EntryPoints;
struct hamr_SW_CASE_Filter_OR_thr_Impl_Bridge_EntryPoints {
  TYPE type;
  union Option_9AF35E dispatchTriggers;
  struct hamr_SW_CASE_Filter_OR_thr_Impl_Impl component;
  struct IS_82ABD8 dataInPortIds;
  struct IS_82ABD8 eventInPortIds;
  struct IS_82ABD8 dataOutPortIds;
  struct IS_82ABD8 eventOutPortIds;
  Z CASE_Filter_OR_thr_Impl_BridgeId;
  Z filter_in_Id;
  Z filter_out_Id;
};

#define DeclNewhamr_SW_CASE_Filter_OR_thr_Impl_Bridge_EntryPoints(x) struct hamr_SW_CASE_Filter_OR_thr_Impl_Bridge_EntryPoints x = { .type = Thamr_SW_CASE_Filter_OR_thr_Impl_Bridge_EntryPoints }

#ifdef __cplusplus
}
#endif

#endif