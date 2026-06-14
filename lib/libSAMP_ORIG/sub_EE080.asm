; =========================================================
; Game Engine Function: sub_EE080
; Address            : 0xEE080 - 0xEE0B2
; =========================================================

EE080:  PUSH            {R4-R7,LR}
EE082:  ADD             R7, SP, #0xC
EE084:  PUSH.W          {R11}
EE088:  MOV             R5, R0
EE08A:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr - 0xEE092)
EE08C:  MOV             R4, R1
EE08E:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr
EE090:  LDR             R0, [R0]; this
EE092:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE096:  MOV             R6, R0
EE098:  MOV             R0, R4
EE09A:  MOV             R1, R6
EE09C:  BL              sub_EE674
EE0A0:  MOV             R1, R0; this
EE0A2:  MOV             R0, R5; int
EE0A4:  MOV             R2, R6
EE0A6:  POP.W           {R11}
EE0AA:  POP.W           {R4-R7,LR}
EE0AE:  B.W             sub_EE550
