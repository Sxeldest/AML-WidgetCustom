; =========================================================
; Game Engine Function: sub_ECFAC
; Address            : 0xECFAC - 0xECFCC
; =========================================================

ECFAC:  PUSH            {R4,R5,R7,LR}
ECFAE:  ADD             R7, SP, #8
ECFB0:  MOV             R5, R0
ECFB2:  LDR             R0, =(_ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xECFBA)
ECFB4:  MOV             R4, R1
ECFB6:  ADD             R0, PC; _ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
ECFB8:  LDR             R0, [R0]; this
ECFBA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECFBE:  MOV             R2, R0
ECFC0:  MOV             R0, R5; int
ECFC2:  MOV             R1, R4; this
ECFC4:  POP.W           {R4,R5,R7,LR}
ECFC8:  B.W             sub_EE550
