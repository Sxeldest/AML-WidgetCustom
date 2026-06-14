; =========================================================
; Game Engine Function: sub_ECF64
; Address            : 0xECF64 - 0xECF84
; =========================================================

ECF64:  PUSH            {R4,R5,R7,LR}
ECF66:  ADD             R7, SP, #8
ECF68:  MOV             R5, R0
ECF6A:  LDR             R0, =(_ZNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xECF72)
ECF6C:  MOV             R4, R1
ECF6E:  ADD             R0, PC; _ZNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
ECF70:  LDR             R0, [R0]; this
ECF72:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECF76:  MOV             R2, R0
ECF78:  MOV             R0, R5; int
ECF7A:  MOV             R1, R4; this
ECF7C:  POP.W           {R4,R5,R7,LR}
ECF80:  B.W             sub_EE550
