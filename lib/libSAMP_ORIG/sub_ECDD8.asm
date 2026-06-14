; =========================================================
; Game Engine Function: sub_ECDD8
; Address            : 0xECDD8 - 0xECDF8
; =========================================================

ECDD8:  PUSH            {R4,R5,R7,LR}
ECDDA:  ADD             R7, SP, #8
ECDDC:  MOV             R5, R0
ECDDE:  LDR             R0, =(_ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xECDE6)
ECDE0:  MOV             R4, R1
ECDE2:  ADD             R0, PC; _ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
ECDE4:  LDR             R0, [R0]; this
ECDE6:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECDEA:  MOV             R2, R0
ECDEC:  MOV             R0, R5; int
ECDEE:  MOV             R1, R4; this
ECDF0:  POP.W           {R4,R5,R7,LR}
ECDF4:  B.W             sub_EE550
