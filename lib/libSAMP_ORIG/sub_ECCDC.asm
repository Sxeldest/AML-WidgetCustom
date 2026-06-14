; =========================================================
; Game Engine Function: sub_ECCDC
; Address            : 0xECCDC - 0xECCFC
; =========================================================

ECCDC:  PUSH            {R4,R5,R7,LR}
ECCDE:  ADD             R7, SP, #8
ECCE0:  MOV             R5, R0
ECCE2:  LDR             R0, =(_ZNSt6__ndk15ctypeIwE2idE_ptr - 0xECCEA)
ECCE4:  MOV             R4, R1
ECCE6:  ADD             R0, PC; _ZNSt6__ndk15ctypeIwE2idE_ptr
ECCE8:  LDR             R0, [R0]; this
ECCEA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECCEE:  MOV             R2, R0
ECCF0:  MOV             R0, R5; int
ECCF2:  MOV             R1, R4; this
ECCF4:  POP.W           {R4,R5,R7,LR}
ECCF8:  B.W             sub_EE550
