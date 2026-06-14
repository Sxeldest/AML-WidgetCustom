; =========================================================
; Game Engine Function: sub_ECCB8
; Address            : 0xECCB8 - 0xECCD8
; =========================================================

ECCB8:  PUSH            {R4,R5,R7,LR}
ECCBA:  ADD             R7, SP, #8
ECCBC:  MOV             R5, R0
ECCBE:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0xECCC6)
ECCC0:  MOV             R4, R1
ECCC2:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
ECCC4:  LDR             R0, [R0]; this
ECCC6:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECCCA:  MOV             R2, R0
ECCCC:  MOV             R0, R5; int
ECCCE:  MOV             R1, R4; this
ECCD0:  POP.W           {R4,R5,R7,LR}
ECCD4:  B.W             sub_EE550
