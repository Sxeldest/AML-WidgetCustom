; =========================================================
; Game Engine Function: sub_EDFD8
; Address            : 0xEDFD8 - 0xEE00A
; =========================================================

EDFD8:  PUSH            {R4-R7,LR}
EDFDA:  ADD             R7, SP, #0xC
EDFDC:  PUSH.W          {R11}
EDFE0:  MOV             R5, R0
EDFE2:  LDR             R0, =(_ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr - 0xEDFEA)
EDFE4:  MOV             R4, R1
EDFE6:  ADD             R0, PC; _ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr
EDFE8:  LDR             R0, [R0]; this
EDFEA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EDFEE:  MOV             R6, R0
EDFF0:  MOV             R0, R4
EDFF2:  MOV             R1, R6
EDFF4:  BL              sub_EE674
EDFF8:  MOV             R1, R0; this
EDFFA:  MOV             R0, R5; int
EDFFC:  MOV             R2, R6
EDFFE:  POP.W           {R11}
EE002:  POP.W           {R4-R7,LR}
EE006:  B.W             sub_EE550
