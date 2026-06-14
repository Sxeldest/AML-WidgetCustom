; =========================================================
; Game Engine Function: sub_ECDFC
; Address            : 0xECDFC - 0xECE1C
; =========================================================

ECDFC:  PUSH            {R4,R5,R7,LR}
ECDFE:  ADD             R7, SP, #8
ECE00:  MOV             R5, R0
ECE02:  LDR             R0, =(_ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xECE0A)
ECE04:  MOV             R4, R1
ECE06:  ADD             R0, PC; _ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
ECE08:  LDR             R0, [R0]; this
ECE0A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECE0E:  MOV             R2, R0
ECE10:  MOV             R0, R5; int
ECE12:  MOV             R1, R4; this
ECE14:  POP.W           {R4,R5,R7,LR}
ECE18:  B.W             sub_EE550
