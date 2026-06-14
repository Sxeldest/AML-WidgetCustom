; =========================================================
; Game Engine Function: sub_ECD90
; Address            : 0xECD90 - 0xECDB0
; =========================================================

ECD90:  PUSH            {R4,R5,R7,LR}
ECD92:  ADD             R7, SP, #8
ECD94:  MOV             R5, R0
ECD96:  LDR             R0, =(_ZNSt6__ndk18numpunctIcE2idE_ptr - 0xECD9E)
ECD98:  MOV             R4, R1
ECD9A:  ADD             R0, PC; _ZNSt6__ndk18numpunctIcE2idE_ptr
ECD9C:  LDR             R0, [R0]; this
ECD9E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECDA2:  MOV             R2, R0
ECDA4:  MOV             R0, R5; int
ECDA6:  MOV             R1, R4; this
ECDA8:  POP.W           {R4,R5,R7,LR}
ECDAC:  B.W             sub_EE550
