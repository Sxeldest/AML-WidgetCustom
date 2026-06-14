; =========================================================
; Game Engine Function: sub_ED4F0
; Address            : 0xED4F0 - 0xED510
; =========================================================

ED4F0:  PUSH            {R4,R5,R7,LR}
ED4F2:  ADD             R7, SP, #8
ED4F4:  MOV             R5, R0
ED4F6:  LDR             R0, =(_ZNSt6__ndk18numpunctIcE2idE_ptr - 0xED4FE)
ED4F8:  MOV             R4, R1
ED4FA:  ADD             R0, PC; _ZNSt6__ndk18numpunctIcE2idE_ptr
ED4FC:  LDR             R0, [R0]; this
ED4FE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED502:  MOV             R2, R0
ED504:  MOV             R0, R5; int
ED506:  MOV             R1, R4; this
ED508:  POP.W           {R4,R5,R7,LR}
ED50C:  B.W             sub_EE550
