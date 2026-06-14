; =========================================================
; Game Engine Function: sub_ECFD0
; Address            : 0xECFD0 - 0xECFF0
; =========================================================

ECFD0:  PUSH            {R4,R5,R7,LR}
ECFD2:  ADD             R7, SP, #8
ECFD4:  MOV             R5, R0
ECFD6:  LDR             R0, =(_ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xECFDE)
ECFD8:  MOV             R4, R1
ECFDA:  ADD             R0, PC; _ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
ECFDC:  LDR             R0, [R0]; this
ECFDE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECFE2:  MOV             R2, R0
ECFE4:  MOV             R0, R5; int
ECFE6:  MOV             R1, R4; this
ECFE8:  POP.W           {R4,R5,R7,LR}
ECFEC:  B.W             sub_EE550
