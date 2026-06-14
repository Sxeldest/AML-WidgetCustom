; =========================================================
; Game Engine Function: sub_EDEC0
; Address            : 0xEDEC0 - 0xEDEF2
; =========================================================

EDEC0:  PUSH            {R4-R7,LR}
EDEC2:  ADD             R7, SP, #0xC
EDEC4:  PUSH.W          {R11}
EDEC8:  MOV             R5, R0
EDECA:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0xEDED2)
EDECC:  MOV             R4, R1
EDECE:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
EDED0:  LDR             R0, [R0]; this
EDED2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EDED6:  MOV             R6, R0
EDED8:  MOV             R0, R4
EDEDA:  MOV             R1, R6
EDEDC:  BL              sub_EE674
EDEE0:  MOV             R1, R0; this
EDEE2:  MOV             R0, R5; int
EDEE4:  MOV             R2, R6
EDEE6:  POP.W           {R11}
EDEEA:  POP.W           {R4-R7,LR}
EDEEE:  B.W             sub_EE550
