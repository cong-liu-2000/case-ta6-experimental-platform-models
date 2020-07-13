#ifndef SB_CASE_FILTER_ARES_THR_IMPL_H
#define SB_CASE_FILTER_ARES_THR_IMPL_H

#include <sb_types.h>

bool sb_filter_in_dequeue(union_art_DataContent *);

bool sb_filter_out_MON_GEO_enqueue(const union_art_DataContent *);

bool sb_filter_out_MON_REQ_enqueue(const union_art_DataContent *);

#endif // SB_CASE_FILTER_ARES_THR_IMPL_H
