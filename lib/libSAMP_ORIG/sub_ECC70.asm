; =========================================================
; Game Engine Function: sub_ECC70
; Address            : 0xECC70 - 0xECC90
; =========================================================

ECC70:  PUSH            {R4,R5,R7,LR}
ECC72:  ADD             R7, SP, #8
ECC74:  MOV             R5, R0
ECC76:  LDR             R0, =(_ZNSt6__ndk17collateIcE2idE_ptr - 0xECC7E)
ECC78:  MOV             R4, R1
ECC7A:  ADD             R0, PC; _ZNSt6__ndk17collateIcE2idE_ptr
ECC7C:  LDR             R0, [R0]; this
ECC7E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECC82:  MOV             R2, R0
ECC84:  MOV             R0, R5; int
ECC86:  MOV             R1, R4; this
ECC88:  POP.W           {R4,R5,R7,LR}
ECC8C:  B.W             sub_EE550
