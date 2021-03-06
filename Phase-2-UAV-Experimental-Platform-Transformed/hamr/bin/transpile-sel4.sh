#!/usr/bin/env bash
#
# This file is autogenerated.  Do not edit
#
set -e

if [ -z "${SIREUM_HOME}" ]; then
  echo "SIREUM_HOME not set. Refer to https://github.com/sireum/kekinian/#installing"
  exit 1
fi

SCRIPT_HOME=$( cd "$( dirname "$0" )" &> /dev/null && pwd )

PATH_SEP=":"
if [ -n "$COMSPEC" -a -x "$COMSPEC" ]; then
  PATH_SEP=";"
fi

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_FC_UART_UARTDriver"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/Drivers${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_FC_UART_UARTDriver" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_FC_UART_UARTDriver" \
  --apps "hamr.SW_Impl_Instance_FC_UART_UARTDriver.UARTDriver" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 5 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=5;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=5" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_FC_UART_UARTDriver.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_FC_UART_UARTDriver.UARTDriver" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/UARTDriver_Impl_Impl/UARTDriver_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/UARTDriver_Impl_Impl/UARTDriver_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/UARTDriver_Impl_Impl/UARTDriver_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FC_UART_UARTDriver/UARTDriver_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FC_UART_UARTDriver/UARTDriver_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_RADIO_RadioDriver_Attestation"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_RADIO_RadioDriver_Attestation" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_RADIO_RadioDriver_Attestation" \
  --apps "hamr.SW_Impl_Instance_RADIO_RadioDriver_Attestation.RadioDriver_Attestation" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 7 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=7;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=7" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_RADIO_RadioDriver_Attestation.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_RADIO_RadioDriver_Attestation.RadioDriver_Attestation" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/RadioDriver_Attestation_thr_Impl_Impl/RadioDriver_Attestation_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/RadioDriver_Attestation_thr_Impl_Impl/RadioDriver_Attestation_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/RadioDriver_Attestation_thr_Impl_Impl/RadioDriver_Attestation_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_RADIO_RadioDriver_Attestation/RadioDriver_Attestation_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_RADIO_RadioDriver_Attestation/RadioDriver_Attestation_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_FlyZones_FlyZonesDatabase"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_FlyZones_FlyZonesDatabase" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_FlyZones_FlyZonesDatabase" \
  --apps "hamr.SW_Impl_Instance_FlyZones_FlyZonesDatabase.FlyZonesDatabase" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 2 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=2" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_FlyZones_FlyZonesDatabase.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_FlyZones_FlyZonesDatabase.FlyZonesDatabase" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/FlyZonesDatabase_thr_Impl_Impl/FlyZonesDatabase_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/FlyZonesDatabase_thr_Impl_Impl/FlyZonesDatabase_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/FlyZonesDatabase_thr_Impl_Impl/FlyZonesDatabase_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FlyZones_FlyZonesDatabase/FlyZonesDatabase_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FlyZones_FlyZonesDatabase/FlyZonesDatabase_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_UXAS_UxAS"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_UXAS_UxAS" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_UXAS_UxAS" \
  --apps "hamr.SW_Impl_Instance_UXAS_UxAS.UxAS" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 5 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=5;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=5" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_UXAS_UxAS.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_UXAS_UxAS.UxAS" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/UxAS_thr_Impl_Impl/UxAS_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/UxAS_thr_Impl_Impl/UxAS_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/UxAS_thr_Impl_Impl/UxAS_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_UXAS_UxAS/UxAS_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_UXAS_UxAS/UxAS_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_WPM_WaypointPlanManagerService"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_WPM_WaypointPlanManagerService" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_WPM_WaypointPlanManagerService" \
  --apps "hamr.SW_Impl_Instance_WPM_WaypointPlanManagerService.WaypointPlanManagerService" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 4 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=4;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=4" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_WPM_WaypointPlanManagerService.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_WPM_WaypointPlanManagerService.WaypointPlanManagerService" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/WaypointPlanManagerService_thr_Impl_Impl/WaypointPlanManagerService_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/WaypointPlanManagerService_thr_Impl_Impl/WaypointPlanManagerService_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/WaypointPlanManagerService_thr_Impl_Impl/WaypointPlanManagerService_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_WPM_WaypointPlanManagerService/WaypointPlanManagerService_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_WPM_WaypointPlanManagerService/WaypointPlanManagerService_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_AM_CASE_AttestationManager"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_AM_CASE_AttestationManager" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_AM_CASE_AttestationManager" \
  --apps "hamr.SW_Impl_Instance_AM_CASE_AttestationManager.CASE_AttestationManager" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 3 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=3;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=3" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_AM_CASE_AttestationManager.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_AM_CASE_AttestationManager.CASE_AttestationManager" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_AttestationManager_thr_Impl_Impl/CASE_AttestationManager_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_AttestationManager_thr_Impl_Impl/CASE_AttestationManager_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_AttestationManager_thr_Impl_Impl/CASE_AttestationManager_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_AM_CASE_AttestationManager/CASE_AttestationManager_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_AM_CASE_AttestationManager/CASE_AttestationManager_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_AM_Gate_CASE_AttestationGate"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_AM_Gate_CASE_AttestationGate" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_AM_Gate_CASE_AttestationGate" \
  --apps "hamr.SW_Impl_Instance_AM_Gate_CASE_AttestationGate.CASE_AttestationGate" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 7 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=7;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=7" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_AM_Gate_CASE_AttestationGate.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_AM_Gate_CASE_AttestationGate.CASE_AttestationGate" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_AttestationGate_thr_Impl_Impl/CASE_AttestationGate_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_AttestationGate_thr_Impl_Impl/CASE_AttestationGate_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_AttestationGate_thr_Impl_Impl/CASE_AttestationGate_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_AM_Gate_CASE_AttestationGate/CASE_AttestationGate_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_AM_Gate_CASE_AttestationGate/CASE_AttestationGate_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq" \
  --apps "hamr.SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq.CASE_Filter_AReq" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 3 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=3;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=3" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq.CASE_Filter_AReq" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_AReq_thr_Impl_Impl/CASE_Filter_AReq_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_AReq_thr_Impl_Impl/CASE_Filter_AReq_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_AReq_thr_Impl_Impl/CASE_Filter_AReq_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq/CASE_Filter_AReq_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq/CASE_Filter_AReq_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_FLT_OR_CASE_Filter_OR"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_FLT_OR_CASE_Filter_OR" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_FLT_OR_CASE_Filter_OR" \
  --apps "hamr.SW_Impl_Instance_FLT_OR_CASE_Filter_OR.CASE_Filter_OR" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 2 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=2" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_FLT_OR_CASE_Filter_OR.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_FLT_OR_CASE_Filter_OR.CASE_Filter_OR" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_OR_thr_Impl_Impl/CASE_Filter_OR_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_OR_thr_Impl_Impl/CASE_Filter_OR_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_OR_thr_Impl_Impl/CASE_Filter_OR_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FLT_OR_CASE_Filter_OR/CASE_Filter_OR_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FLT_OR_CASE_Filter_OR/CASE_Filter_OR_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_FLT_LST_CASE_Filter_LST"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_FLT_LST_CASE_Filter_LST" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_FLT_LST_CASE_Filter_LST" \
  --apps "hamr.SW_Impl_Instance_FLT_LST_CASE_Filter_LST.CASE_Filter_LST" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 2 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=2" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_FLT_LST_CASE_Filter_LST.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_FLT_LST_CASE_Filter_LST.CASE_Filter_LST" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_LST_thr_Impl_Impl/CASE_Filter_LST_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_LST_thr_Impl_Impl/CASE_Filter_LST_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_LST_thr_Impl_Impl/CASE_Filter_LST_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FLT_LST_CASE_Filter_LST/CASE_Filter_LST_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FLT_LST_CASE_Filter_LST/CASE_Filter_LST_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_MON_REQ_CASE_Monitor_Req"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_MON_REQ_CASE_Monitor_Req" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_MON_REQ_CASE_Monitor_Req" \
  --apps "hamr.SW_Impl_Instance_MON_REQ_CASE_Monitor_Req.CASE_Monitor_Req" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 3 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=3;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=3" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_MON_REQ_CASE_Monitor_Req.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_MON_REQ_CASE_Monitor_Req.CASE_Monitor_Req" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Monitor_Req_thr_Impl_Impl/CASE_Monitor_Req_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Monitor_Req_thr_Impl_Impl/CASE_Monitor_Req_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Monitor_Req_thr_Impl_Impl/CASE_Monitor_Req_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_MON_REQ_CASE_Monitor_Req/CASE_Monitor_Req_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_MON_REQ_CASE_Monitor_Req/CASE_Monitor_Req_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_FLT_ARes_CASE_Filter_ARes"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_FLT_ARes_CASE_Filter_ARes" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_FLT_ARes_CASE_Filter_ARes" \
  --apps "hamr.SW_Impl_Instance_FLT_ARes_CASE_Filter_ARes.CASE_Filter_ARes" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 2 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=2" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_FLT_ARes_CASE_Filter_ARes.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_FLT_ARes_CASE_Filter_ARes.CASE_Filter_ARes" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_ARes_thr_Impl_Impl/CASE_Filter_ARes_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_ARes_thr_Impl_Impl/CASE_Filter_ARes_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Filter_ARes_thr_Impl_Impl/CASE_Filter_ARes_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FLT_ARes_CASE_Filter_ARes/CASE_Filter_ARes_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_FLT_ARes_CASE_Filter_ARes/CASE_Filter_ARes_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo" \
  --apps "hamr.SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo.CASE_Monitor_Geo" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 5 \
  --sequence "MS[Z,art.Bridge]=1;MS[Z,MOption[art.Bridge]]=1;IS[Z,art.UPort]=5;IS[Z,art.UConnection]=1;IS[Z,B]=262144" \
  --constants "art.Art.maxComponents=1;art.Art.maxPorts=5" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo.cmake" \
  --forward "art.ArtNative=hamr.SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo.CASE_Monitor_Geo" \
  --stack-size "524288" \
  --stable-type-id \
  --exts "${SCRIPT_HOME}/../src/c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Monitor_Geo_thr_Impl_Impl/CASE_Monitor_Geo_thr_Impl_Impl_api.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Monitor_Geo_thr_Impl_Impl/CASE_Monitor_Geo_thr_Impl_Impl_api.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/CASE_Monitor_Geo_thr_Impl_Impl/CASE_Monitor_Geo_thr_Impl_Impl.c${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo/CASE_Monitor_Geo_thr_Impl_adapter.h${PATH_SEP}${SCRIPT_HOME}/../src/c/ext-c/adapters/SW_Impl_Instance_MON_GEO_CASE_Monitor_Geo/CASE_Monitor_Geo_thr_Impl_adapter.c" \
  --exclude-build "hamr.Drivers.UARTDriver_Impl_Impl,hamr.SW.RadioDriver_Attestation_thr_Impl_Impl,hamr.SW.FlyZonesDatabase_thr_Impl_Impl,hamr.SW.UxAS_thr_Impl_Impl,hamr.SW.WaypointPlanManagerService_thr_Impl_Impl,hamr.SW.CASE_AttestationManager_thr_Impl_Impl,hamr.SW.CASE_AttestationGate_thr_Impl_Impl,hamr.SW.CASE_Filter_AReq_thr_Impl_Impl,hamr.SW.CASE_Filter_OR_thr_Impl_Impl,hamr.SW.CASE_Filter_LST_thr_Impl_Impl,hamr.SW.CASE_Monitor_Req_thr_Impl_Impl,hamr.SW.CASE_Filter_ARes_thr_Impl_Impl,hamr.SW.CASE_Monitor_Geo_thr_Impl_Impl" \
  --lib-only \
  --verbose

OUTPUT_DIR="${SCRIPT_HOME}/../../CAmkES/slang_libraries/SlangTypeLibrary"

${SIREUM_HOME}/bin/sireum slang transpilers c \
  --sourcepath "${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/hamr/SlangTypeLibrary" \
  --output-dir "${OUTPUT_DIR}" \
  --name "SlangTypeLibrary" \
  --apps "hamr.SlangTypeLibrary.SlangTypeLibrary" \
  --fingerprint 3 \
  --bits 32 \
  --string-size 256 \
  --sequence-size 1 \
  --sequence "IS[Z,B]=262144" \
  --cmake-includes "+${SCRIPT_HOME}/settings_SlangTypeLibrary.cmake" \
  --forward "art.ArtNative=hamr.SlangTypeLibrary.SlangTypeLibrary" \
  --stack-size "16777216" \
  --stable-type-id \
  --lib-only \
  --verbose