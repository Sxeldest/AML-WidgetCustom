; =========================================================
; Game Engine Function: sub_ED3F4
; Address            : 0xED3F4 - 0xED414
; =========================================================

ED3F4:  PUSH            {R4,R5,R7,LR}
ED3F6:  ADD             R7, SP, #8
ED3F8:  MOV             R5, R0
ED3FA:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0xED402)
ED3FC:  MOV             R4, R1
ED3FE:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
ED400:  LDR             R0, [R0]; this
ED402:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED406:  MOV             R2, R0
ED408:  MOV             R0, R5; int
ED40A:  MOV             R1, R4; this
ED40C:  POP.W           {R4,R5,R7,LR}
ED410:  B.W             sub_EE550
