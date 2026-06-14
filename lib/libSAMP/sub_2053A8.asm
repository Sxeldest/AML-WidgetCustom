; =========================================================
; Game Engine Function: sub_2053A8
; Address            : 0x2053A8 - 0x2053C8
; =========================================================

2053A8:  PUSH            {R4,R5,R7,LR}
2053AA:  ADD             R7, SP, #8
2053AC:  MOV             R5, R0
2053AE:  LDR             R0, =(_ZNSt6__ndk18numpunctIcE2idE_ptr - 0x2053B6)
2053B0:  MOV             R4, R1
2053B2:  ADD             R0, PC; _ZNSt6__ndk18numpunctIcE2idE_ptr
2053B4:  LDR             R0, [R0]; this
2053B6:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
2053BA:  MOV             R2, R0
2053BC:  MOV             R0, R5; int
2053BE:  MOV             R1, R4; this
2053C0:  POP.W           {R4,R5,R7,LR}
2053C4:  B.W             sub_206408
