; =========================================================
; Game Engine Function: sub_EDEF8
; Address            : 0xEDEF8 - 0xEDF2A
; =========================================================

EDEF8:  PUSH            {R4-R7,LR}
EDEFA:  ADD             R7, SP, #0xC
EDEFC:  PUSH.W          {R11}
EDF00:  MOV             R5, R0
EDF02:  LDR             R0, =(_ZNSt6__ndk15ctypeIwE2idE_ptr - 0xEDF0A)
EDF04:  MOV             R4, R1
EDF06:  ADD             R0, PC; _ZNSt6__ndk15ctypeIwE2idE_ptr
EDF08:  LDR             R0, [R0]; this
EDF0A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EDF0E:  MOV             R6, R0
EDF10:  MOV             R0, R4
EDF12:  MOV             R1, R6
EDF14:  BL              sub_EE674
EDF18:  MOV             R1, R0; this
EDF1A:  MOV             R0, R5; int
EDF1C:  MOV             R2, R6
EDF1E:  POP.W           {R11}
EDF22:  POP.W           {R4-R7,LR}
EDF26:  B.W             sub_EE550
