#include <UARTDriver_Impl_Impl_api.h>
#include <ext.h>

// This file will not be overwritten so is safe to edit

Unit hamr_Drivers_UARTDriver_Impl_Impl_initialise_(
  STACK_FRAME
  hamr_Drivers_UARTDriver_Impl_Impl this) {
 // example api usage

 api_logInfo__hamr_Drivers_UARTDriver_Impl_Impl(this, string("Example logInfo"));
 api_logDebug__hamr_Drivers_UARTDriver_Impl_Impl(this, string("Example logDebug"));
 api_logError__hamr_Drivers_UARTDriver_Impl_Impl(this, string("Example logError"));
}

Unit hamr_Drivers_UARTDriver_Impl_Impl_finalise_(
  STACK_FRAME
  hamr_Drivers_UARTDriver_Impl_Impl this) {
  // example finalise method
}

Unit hamr_Drivers_UARTDriver_Impl_Impl_timeTriggered_(
  STACK_FRAME
  hamr_Drivers_UARTDriver_Impl_Impl this) {}
