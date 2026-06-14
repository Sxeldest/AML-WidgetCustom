; =========================================================
; Game Engine Function: sub_ECF1C
; Address            : 0xECF1C - 0xECF3C
; =========================================================

ECF1C:  PUSH            {R4,R5,R7,LR}
ECF1E:  ADD             R7, SP, #8
ECF20:  MOV             R5, R0
ECF22:  LDR             R0, =(_ZNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xECF2A)
ECF24:  MOV             R4, R1
ECF26:  ADD             R0, PC; _ZNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
ECF28:  LDR             R0, [R0]; this
ECF2A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECF2E:  MOV             R2, R0
ECF30:  MOV             R0, R5; int
ECF32:  MOV             R1, R4; this
ECF34:  POP.W           {R4,R5,R7,LR}
ECF38:  B.W             sub_EE550
