; =========================================================
; Game Engine Function: sub_2062B8
; Address            : 0x2062B8 - 0x2062EA
; =========================================================

2062B8:  PUSH            {R4-R7,LR}
2062BA:  ADD             R7, SP, #0xC
2062BC:  PUSH.W          {R11}
2062C0:  MOV             R5, R0
2062C2:  LDR             R0, =(_ZNSt6__ndk18messagesIcE2idE_ptr - 0x2062CA)
2062C4:  MOV             R4, R1
2062C6:  ADD             R0, PC; _ZNSt6__ndk18messagesIcE2idE_ptr
2062C8:  LDR             R0, [R0]; this
2062CA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
2062CE:  MOV             R6, R0
2062D0:  MOV             R0, R4
2062D2:  MOV             R1, R6
2062D4:  BL              sub_20652C
2062D8:  MOV             R1, R0; this
2062DA:  MOV             R0, R5; int
2062DC:  MOV             R2, R6
2062DE:  POP.W           {R11}
2062E2:  POP.W           {R4-R7,LR}
2062E6:  B.W             sub_206408
