; =========================================================
; Game Engine Function: sub_1E2884
; Address            : 0x1E2884 - 0x1E28B4
; =========================================================

1E2884:  PUSH            {R4,R6,R7,LR}
1E2886:  ADD             R7, SP, #8
1E2888:  LDR             R1, =(RwEngineInstance_ptr - 0x1E288E)
1E288A:  ADD             R1, PC; RwEngineInstance_ptr
1E288C:  LDR             R1, [R1]; RwEngineInstance
1E288E:  LDR             R1, [R1]
1E2890:  LDR.W           R2, [R1,#0xC8]
1E2894:  ADR             R1, dword_1E28B8
1E2896:  BLX             R2
1E2898:  CMP             R0, #0
1E289A:  MOV             R4, R0
1E289C:  IT NE
1E289E:  MOVNE           R4, #1
1E28A0:  BEQ             loc_1E28B0
1E28A2:  LDR             R1, =(RwEngineInstance_ptr - 0x1E28A8)
1E28A4:  ADD             R1, PC; RwEngineInstance_ptr
1E28A6:  LDR             R1, [R1]; RwEngineInstance
1E28A8:  LDR             R1, [R1]
1E28AA:  LDR.W           R1, [R1,#0xCC]
1E28AE:  BLX             R1
1E28B0:  MOV             R0, R4
1E28B2:  POP             {R4,R6,R7,PC}
