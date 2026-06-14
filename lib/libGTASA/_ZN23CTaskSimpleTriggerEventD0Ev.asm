; =========================================================
; Game Engine Function: _ZN23CTaskSimpleTriggerEventD0Ev
; Address            : 0x4F2014 - 0x4F203E
; =========================================================

4F2014:  PUSH            {R4,R6,R7,LR}
4F2016:  ADD             R7, SP, #8
4F2018:  MOV             R4, R0
4F201A:  LDR             R0, =(_ZTV23CTaskSimpleTriggerEvent_ptr - 0x4F2020)
4F201C:  ADD             R0, PC; _ZTV23CTaskSimpleTriggerEvent_ptr
4F201E:  LDR             R1, [R0]; `vtable for'CTaskSimpleTriggerEvent ...
4F2020:  LDR             R0, [R4,#8]
4F2022:  ADDS            R1, #8
4F2024:  STR             R1, [R4]
4F2026:  CMP             R0, #0
4F2028:  ITTT NE
4F202A:  LDRNE           R1, [R0]
4F202C:  LDRNE           R1, [R1,#4]
4F202E:  BLXNE           R1
4F2030:  MOV             R0, R4; this
4F2032:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4F2036:  POP.W           {R4,R6,R7,LR}
4F203A:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
