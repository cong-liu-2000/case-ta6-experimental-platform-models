// This file will be regenerated, do not edit

#include <all.h>
#include <camkes.h>
#include <stdbool.h>
#include <CASE_Filter_AReq_thr_Impl_Impl_api.h>
#include <CASE_Filter_AReq_thr_Impl_adapter.h>

hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints entryPoints;
hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl this;
IS_82ABD8 event_in_port_ids;
IS_82ABD8 data_in_port_ids;
IS_82ABD8 event_out_port_ids;
IS_82ABD8 data_out_port_ids;
bool initialized = false;

void init(STACK_FRAME_ONLY) {
  if(!initialized) {
    DeclNewStackFrame(caller, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "init", 0);

    entryPoints = (hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_adapter_entryPoints(SF_LAST);
    this = (hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl) &entryPoints->component;
    event_in_port_ids = (IS_82ABD8) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints_eventInPortIds_(entryPoints);
    data_in_port_ids = (IS_82ABD8) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints_dataInPortIds_(entryPoints);
    event_out_port_ids = (IS_82ABD8) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints_eventOutPortIds_(entryPoints);
    data_out_port_ids = (IS_82ABD8) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints_dataOutPortIds_(entryPoints);
    initialized = true;
  }
}

void ffiinitializeComponent(unsigned char *parameter, long parameterSizeBytes) {
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiinitializeComponent", 0);

  entryPoints = (hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_adapter_entryPoints(SF_LAST);
  this = (hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl) &entryPoints->component;
  event_in_port_ids = (IS_82ABD8) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints_eventInPortIds_(entryPoints);
  data_in_port_ids = (IS_82ABD8) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints_dataInPortIds_(entryPoints);
  event_out_port_ids = (IS_82ABD8) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints_eventOutPortIds_(entryPoints);
  data_out_port_ids = (IS_82ABD8) hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_EntryPoints_dataOutPortIds_(entryPoints);
}

void checkAndReportBufferOverrun(STACK_FRAME long bytesWritten, long bufferSizeBytes) {
  #ifdef CAKEML_CHECK_AND_REPORT_BUFFER_OVERRUNS
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "checkAndReportBufferOverrun", 0);

  init(SF_LAST);
  if (bytesWritten > bufferSizeBytes) {
    DeclNewString(_str);
    String str = (String)&_str;
    String__append(SF str, string("Wrote too many bytes to buffer"));
    hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_Api_logInfo_(SF hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl_api_(this), str);
  }
  #endif
}

void dumpBuffer(STACK_FRAME size_t numBits, U8* buffer) {
  #ifdef CAKEML_DUMP_BUFFERS
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "dumpBuffer", 0);

  init(SF_LAST);
  DeclNewString(_str);
  String str = (String)&_str;
  String__append(SF str, string("["));
  size_t end = ((numBits / 8) > 80) ? 80 : (numBits / 8);
  for (int i = 0 ; i < end ; ++i) {
    U8_string_(SF str, buffer[i]);
  }
  String__append(SF str, string("]"));
  hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_Api_logInfo_(SF hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl_api_(this), str);
  #endif
}

void ffiapi_receiveInput(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes) {
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiapi_receiveInput", 0);

  init(SF_LAST);
  art_Art_receiveInput(SF event_in_port_ids, data_in_port_ids);
}

void ffiapi_sendOutput(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes) {
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiapi_sendOutput", 0);

  init(SF_LAST);
  art_Art_sendOutput(SF event_out_port_ids, data_out_port_ids);
}

void ffiapi_logInfo(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes){
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiapi_logInfo", 0);

  init(SF_LAST);
  DeclNewString(_str);
  String str = (String)&_str;
  str->size = parameterSizeBytes;
  memcpy(str->value, parameter, parameterSizeBytes);

  hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_Api_logInfo_(SF hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl_api_(this), str);
} 

void ffiapi_logDebug(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes){
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiapi_logDebug", 0);

  init(SF_LAST);
  DeclNewString(_str);
  String str = (String)&_str;
  str->size = parameterSizeBytes;
  memcpy(str->value, parameter, parameterSizeBytes);

  hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_Api_logDebug_(SF hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl_api_(this), str);
} 

void ffiapi_logError(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes){
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiapi_logError", 0);

  init(SF_LAST);
  DeclNewString(_str);
  String str = (String)&_str;
  str->size = parameterSizeBytes;
  memcpy(str->value, parameter, parameterSizeBytes);

  hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Bridge_Api_logError_(SF hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl_api_(this), str);
} 

void ffiapi_get_filter_in(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes) {
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiapi_get_filter_in", 0);

  init(SF_LAST);
  size_t numBits = 0;
  output[0] = api_get_filter_in__hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl(SF this, &numBits, (U8 *)(output + 1));
  checkAndReportBufferOverrun(SF numBits / 8, (outputSizeBytes-1));
  dumpBuffer(SF numBits, output);
}

void ffiapi_send_filter_out_UXAS(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes) {
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiapi_send_filter_out_UXAS", 0);

  init(SF_LAST);
  api_send_filter_out_UXAS__hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl(SF this, parameterSizeBytes*8, (U8 *)parameter);
}

void ffiapi_send_filter_out_MON_REQ(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes) {
  DeclNewStackFrame(NULL, "sb_CASE_Filter_AReq_thr_Impl_ffi.c", "", "ffiapi_send_filter_out_MON_REQ", 0);

  init(SF_LAST);
  api_send_filter_out_MON_REQ__hamr_SW_AUGUST_CASE_Filter_AReq_thr_Impl_Impl(SF this, parameterSizeBytes*8, (U8 *)parameter);
}

void ffisb_pacer_notification_wait(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes) {
  sb_self_pacer_tock_wait();
  output[0] = 1;
}

void ffisb_pacer_notification_emit(unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes) {
  sb_self_pacer_tick_emit();
  output[0] = 1;
}

/**
 * Required by the FFI framework
 */

void ffiwrite (unsigned char *parameter, long parameterSizeBytes, unsigned char *output, long outputSizeBytes){
}

void cml_exit(int arg) {
  #ifdef DEBUG_FFI
  {
    fprintf(stderr,"GCNum: %d, GCTime(us): %ld\n",numGC,microsecs);
  }
  #endif
  exit(arg);
}

// convert big-endian 32-bit float to little-endian 64 bit double
void ffifloat2double(unsigned char *parameter, long parameterSizeBytes,
                     unsigned char *output,    long outputSizeBytes) {
  char bytes [4];
  assert (4 == parameterSizeBytes);
  bytes[3] = parameter[0];
  bytes[2] = parameter[1];
  bytes[1] = parameter[2];
  bytes[0] = parameter[3];

  double result = *((float*)bytes);
  memcpy(output, (unsigned char*) &result, sizeof(double));
}

