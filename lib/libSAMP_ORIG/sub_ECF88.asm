; =========================================================
; Game Engine Function: sub_ECF88
; Address            : 0xECF88 - 0xECFA8
; =========================================================

ECF88:  PUSH            {R4,R5,R7,LR}
ECF8A:  ADD             R7, SP, #8
ECF8C:  MOV             R5, R0
ECF8E:  LDR             R0, =(_ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xECF96)
ECF90:  MOV             R4, R1
ECF92:  ADD             R0, PC; _ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
ECF94:  LDR             R0, [R0]; this
ECF96:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECF9A:  MOV             R2, R0
ECF9C:  MOV             R0, R5; int
ECF9E:  MOV             R1, R4; this
ECFA0:  POP.W           {R4,R5,R7,LR}
ECFA4:  B.W             sub_EE550
