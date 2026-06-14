; =========================================================
; Game Engine Function: sub_EE048
; Address            : 0xEE048 - 0xEE07A
; =========================================================

EE048:  PUSH            {R4-R7,LR}
EE04A:  ADD             R7, SP, #0xC
EE04C:  PUSH.W          {R11}
EE050:  MOV             R5, R0
EE052:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr - 0xEE05A)
EE054:  MOV             R4, R1
EE056:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr
EE058:  LDR             R0, [R0]; this
EE05A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE05E:  MOV             R6, R0
EE060:  MOV             R0, R4
EE062:  MOV             R1, R6
EE064:  BL              sub_EE674
EE068:  MOV             R1, R0; this
EE06A:  MOV             R0, R5; int
EE06C:  MOV             R2, R6
EE06E:  POP.W           {R11}
EE072:  POP.W           {R4-R7,LR}
EE076:  B.W             sub_EE550
