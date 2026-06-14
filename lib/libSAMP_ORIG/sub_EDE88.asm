; =========================================================
; Game Engine Function: sub_EDE88
; Address            : 0xEDE88 - 0xEDEBA
; =========================================================

EDE88:  PUSH            {R4-R7,LR}
EDE8A:  ADD             R7, SP, #0xC
EDE8C:  PUSH.W          {R11}
EDE90:  MOV             R5, R0
EDE92:  LDR             R0, =(_ZNSt6__ndk17collateIwE2idE_ptr - 0xEDE9A)
EDE94:  MOV             R4, R1
EDE96:  ADD             R0, PC; _ZNSt6__ndk17collateIwE2idE_ptr
EDE98:  LDR             R0, [R0]; this
EDE9A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EDE9E:  MOV             R6, R0
EDEA0:  MOV             R0, R4
EDEA2:  MOV             R1, R6
EDEA4:  BL              sub_EE674
EDEA8:  MOV             R1, R0; this
EDEAA:  MOV             R0, R5; int
EDEAC:  MOV             R2, R6
EDEAE:  POP.W           {R11}
EDEB2:  POP.W           {R4-R7,LR}
EDEB6:  B.W             sub_EE550
