; =========================================================
; Game Engine Function: sub_2062F0
; Address            : 0x2062F0 - 0x206322
; =========================================================

2062F0:  PUSH            {R4-R7,LR}
2062F2:  ADD             R7, SP, #0xC
2062F4:  PUSH.W          {R11}
2062F8:  MOV             R5, R0
2062FA:  LDR             R0, =(_ZNSt6__ndk18messagesIwE2idE_ptr - 0x206302)
2062FC:  MOV             R4, R1
2062FE:  ADD             R0, PC; _ZNSt6__ndk18messagesIwE2idE_ptr
206300:  LDR             R0, [R0]; this
206302:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
206306:  MOV             R6, R0
206308:  MOV             R0, R4
20630A:  MOV             R1, R6
20630C:  BL              sub_20652C
206310:  MOV             R1, R0; this
206312:  MOV             R0, R5; int
206314:  MOV             R2, R6
206316:  POP.W           {R11}
20631A:  POP.W           {R4-R7,LR}
20631E:  B.W             sub_206408
