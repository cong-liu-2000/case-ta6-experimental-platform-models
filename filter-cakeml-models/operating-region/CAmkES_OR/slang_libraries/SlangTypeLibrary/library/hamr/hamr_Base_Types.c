#include <all.h>

void hamr_Base_Types_Bits_empty(STACK_FRAME IS_C4F575 result) {
  DeclNewStackFrame(caller, "Base_Types.scala", "hamr.Base_Types", "Bits_empty", 0);
  STATIC_ASSERT(0 <= MaxIS_C4F575, "Insufficient maximum for IS[Z, B] elements.");
  DeclNewIS_C4F575(t_0);
  t_0.size = (int16_t) 0;
  Type_assign(result, (&t_0), sizeof(struct IS_C4F575));
  return;
}