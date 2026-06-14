; =========================================================
; Game Engine Function: sub_ECFF4
; Address            : 0xECFF4 - 0xED014
; =========================================================

ECFF4:  PUSH            {R4,R5,R7,LR}
ECFF6:  ADD             R7, SP, #8
ECFF8:  MOV             R5, R0
ECFFA:  LDR             R0, =(_ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xED002)
ECFFC:  MOV             R4, R1
ECFFE:  ADD             R0, PC; _ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
ED000:  LDR             R0, [R0]; this
ED002:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED006:  MOV             R2, R0
ED008:  MOV             R0, R5; int
ED00A:  MOV             R1, R4; this
ED00C:  POP.W           {R4,R5,R7,LR}
ED010:  B.W             sub_EE550
