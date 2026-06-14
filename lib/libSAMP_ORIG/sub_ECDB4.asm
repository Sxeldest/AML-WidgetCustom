; =========================================================
; Game Engine Function: sub_ECDB4
; Address            : 0xECDB4 - 0xECDD4
; =========================================================

ECDB4:  PUSH            {R4,R5,R7,LR}
ECDB6:  ADD             R7, SP, #8
ECDB8:  MOV             R5, R0
ECDBA:  LDR             R0, =(_ZNSt6__ndk18numpunctIwE2idE_ptr - 0xECDC2)
ECDBC:  MOV             R4, R1
ECDBE:  ADD             R0, PC; _ZNSt6__ndk18numpunctIwE2idE_ptr
ECDC0:  LDR             R0, [R0]; this
ECDC2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECDC6:  MOV             R2, R0
ECDC8:  MOV             R0, R5; int
ECDCA:  MOV             R1, R4; this
ECDCC:  POP.W           {R4,R5,R7,LR}
ECDD0:  B.W             sub_EE550
