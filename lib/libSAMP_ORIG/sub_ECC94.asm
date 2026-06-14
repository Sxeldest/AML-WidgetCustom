; =========================================================
; Game Engine Function: sub_ECC94
; Address            : 0xECC94 - 0xECCB4
; =========================================================

ECC94:  PUSH            {R4,R5,R7,LR}
ECC96:  ADD             R7, SP, #8
ECC98:  MOV             R5, R0
ECC9A:  LDR             R0, =(_ZNSt6__ndk17collateIwE2idE_ptr - 0xECCA2)
ECC9C:  MOV             R4, R1
ECC9E:  ADD             R0, PC; _ZNSt6__ndk17collateIwE2idE_ptr
ECCA0:  LDR             R0, [R0]; this
ECCA2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECCA6:  MOV             R2, R0
ECCA8:  MOV             R0, R5; int
ECCAA:  MOV             R1, R4; this
ECCAC:  POP.W           {R4,R5,R7,LR}
ECCB0:  B.W             sub_EE550
