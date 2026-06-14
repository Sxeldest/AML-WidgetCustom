; =========================================================
; Game Engine Function: sub_EE0B8
; Address            : 0xEE0B8 - 0xEE0EA
; =========================================================

EE0B8:  PUSH            {R4-R7,LR}
EE0BA:  ADD             R7, SP, #0xC
EE0BC:  PUSH.W          {R11}
EE0C0:  MOV             R5, R0
EE0C2:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr - 0xEE0CA)
EE0C4:  MOV             R4, R1
EE0C6:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr
EE0C8:  LDR             R0, [R0]; this
EE0CA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE0CE:  MOV             R6, R0
EE0D0:  MOV             R0, R4
EE0D2:  MOV             R1, R6
EE0D4:  BL              sub_EE674
EE0D8:  MOV             R1, R0; this
EE0DA:  MOV             R0, R5; int
EE0DC:  MOV             R2, R6
EE0DE:  POP.W           {R11}
EE0E2:  POP.W           {R4-R7,LR}
EE0E6:  B.W             sub_EE550
