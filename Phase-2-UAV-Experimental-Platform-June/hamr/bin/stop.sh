#!/usr/bin/env bash
#
# This file is autogenerated.  Do not edit
#
APPS="SW_Impl_Instance_FC_UART_UARTDriver_App SW_Impl_Instance_RADIO_RadioDriver_Attestation_App SW_Impl_Instance_FlyZones_FlyZonesDatabase_App SW_Impl_Instance_UXAS_UxAS_App SW_Impl_Instance_WPM_WaypointPlanManagerService_App SW_Impl_Instance_AM_Gate_CASE_AttestationGate_App SW_Impl_Instance_FLT_LST_CASE_Filter_LST_App SW_Impl_Instance_MON_REQ_CASE_Monitor_Req_App SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo_App"
for APP in ${APPS}; do
  pkill -f $APP
  pkill -9 -f $APP
done
ME=`whoami`

# message queue
IPCS_Q=`ipcs -q | egrep "[0-9a-f]+[0-9]+" | grep $ME | awk '{print $2}'`
for id in $IPCS_Q; do
  ipcrm -q $id;
done

# shared memory
IPCS_Q=`ipcs -m | egrep "[0-9a-f]+[0-9]+" | grep $ME | awk '{print $2}'`
for id in $IPCS_Q; do
  ipcrm -m $id;
done

# semaphores
IPCS_Q=`ipcs -s | egrep "[0-9a-f]+[0-9]+" | grep $ME | awk '{print $2}'`
for id in $IPCS_Q; do
  ipcrm -s $id;
done