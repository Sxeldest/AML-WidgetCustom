; =========================================================
; Game Engine Function: _Z28RwEngineGetTextureMemorySizev
; Address            : 0x1D76A8 - 0x1D76EA
; =========================================================

1D76A8:  PUSH            {R4,R5,R7,LR}
1D76AA:  ADD             R7, SP, #8
1D76AC:  SUB             SP, SP, #0x10
1D76AE:  LDR             R0, =(RwEngineInstance_ptr - 0x1D76BA)
1D76B0:  ADD             R1, SP, #0x18+var_14
1D76B2:  MOVS            R2, #0
1D76B4:  MOVS            R3, #0
1D76B6:  ADD             R0, PC; RwEngineInstance_ptr
1D76B8:  MOVS            R5, #0
1D76BA:  LDR             R0, [R0]; RwEngineInstance
1D76BC:  LDR             R0, [R0]
1D76BE:  LDR             R4, [R0,#0x14]
1D76C0:  MOVS            R0, #0xC
1D76C2:  BLX             R4
1D76C4:  CBNZ            R0, loc_1D76DA
1D76C6:  MOVS            R0, #0x18; int
1D76C8:  MOVS            R1, #0xC
1D76CA:  STR             R5, [SP,#0x18+var_10]
1D76CC:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D76D0:  STR             R0, [SP,#0x18+var_C]
1D76D2:  ADD             R0, SP, #0x18+var_10
1D76D4:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D76D8:  MOVS            R0, #0
1D76DA:  LDR             R1, [SP,#0x18+var_14]
1D76DC:  CMP             R0, #0
1D76DE:  IT EQ
1D76E0:  MOVEQ.W         R1, #0xFFFFFFFF
1D76E4:  MOV             R0, R1
1D76E6:  ADD             SP, SP, #0x10
1D76E8:  POP             {R4,R5,R7,PC}
