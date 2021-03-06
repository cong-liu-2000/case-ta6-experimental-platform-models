#ifndef SIREUM_TYPE_H_hamr_Drivers_UARTDriver_Impl_Bridge_EntryPoints
#define SIREUM_TYPE_H_hamr_Drivers_UARTDriver_Impl_Bridge_EntryPoints

#ifdef __cplusplus
extern "C" {
#endif

#include <misc.h>

// hamr.Drivers.UARTDriver_Impl_Bridge.EntryPoints
#include <type-org_sireum_Option_9AF35E.h>
#include <type-hamr_Drivers_UARTDriver_Impl_Impl.h>
#include <type-org_sireum_IS_82ABD8.h>
#include <type-org_sireum_IS_82ABD8.h>
#include <type-org_sireum_IS_82ABD8.h>
#include <type-org_sireum_IS_82ABD8.h>

typedef struct hamr_Drivers_UARTDriver_Impl_Bridge_EntryPoints *hamr_Drivers_UARTDriver_Impl_Bridge_EntryPoints;
struct hamr_Drivers_UARTDriver_Impl_Bridge_EntryPoints {
  TYPE type;
  union Option_9AF35E dispatchTriggers;
  struct hamr_Drivers_UARTDriver_Impl_Impl component;
  struct IS_82ABD8 dataInPortIds;
  struct IS_82ABD8 eventInPortIds;
  struct IS_82ABD8 dataOutPortIds;
  struct IS_82ABD8 eventOutPortIds;
  Z UARTDriver_Impl_BridgeId;
  Z recv_data_Id;
  Z MissionCommand_Id;
  Z send_data_Id;
  Z AirVehicleState_WPM_Id;
  Z AirVehicleState_UXAS_Id;
};

#define DeclNewhamr_Drivers_UARTDriver_Impl_Bridge_EntryPoints(x) struct hamr_Drivers_UARTDriver_Impl_Bridge_EntryPoints x = { .type = Thamr_Drivers_UARTDriver_Impl_Bridge_EntryPoints }

#ifdef __cplusplus
}
#endif

#endif