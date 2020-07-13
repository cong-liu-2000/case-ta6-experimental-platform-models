#ifndef SB_UXAS_THR_IMPL_H
#define SB_UXAS_THR_IMPL_H

#include <sb_types.h>

bool sb_AutomationRequest_dequeue(union_art_DataContent *);

bool sb_AirVehicleState_dequeue(union_art_DataContent *);

bool sb_OperatingRegion_dequeue(union_art_DataContent *);

bool sb_LineSearchTask_dequeue(union_art_DataContent *);

bool sb_AutomationResponse_enqueue(const union_art_DataContent *);

#endif // SB_UXAS_THR_IMPL_H
