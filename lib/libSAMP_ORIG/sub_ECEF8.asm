; =========================================================
; Game Engine Function: sub_ECEF8
; Address            : 0xECEF8 - 0xECF18
; =========================================================

ECEF8:  PUSH            {R4,R5,R7,LR}
ECEFA:  ADD             R7, SP, #8
ECEFC:  MOV             R5, R0
ECEFE:  LDR             R0, =(_ZNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xECF06)
ECF00:  MOV             R4, R1
ECF02:  ADD             R0, PC; _ZNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
ECF04:  LDR             R0, [R0]; this
ECF06:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECF0A:  MOV             R2, R0
ECF0C:  MOV             R0, R5; int
ECF0E:  MOV             R1, R4; this
ECF10:  POP.W           {R4,R5,R7,LR}
ECF14:  B.W             sub_EE550
