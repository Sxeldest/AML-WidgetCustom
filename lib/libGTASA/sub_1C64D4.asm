; =========================================================
; Game Engine Function: sub_1C64D4
; Address            : 0x1C64D4 - 0x1C6514
; =========================================================

1C64D4:  PUSH            {R4,R5,R7,LR}
1C64D6:  ADD             R7, SP, #8
1C64D8:  MOV             R4, R0
1C64DA:  LDR             R0, =(MatFXMaterialDataOffset_ptr - 0x1C64E0)
1C64DC:  ADD             R0, PC; MatFXMaterialDataOffset_ptr
1C64DE:  LDR             R0, [R0]; MatFXMaterialDataOffset
1C64E0:  LDR             R0, [R0]
1C64E2:  LDR             R5, [R4,R0]
1C64E4:  CBZ             R5, loc_1C6510
1C64E6:  MOV             R0, R5
1C64E8:  BL              sub_1C70B8
1C64EC:  LDR             R0, =(RwEngineInstance_ptr - 0x1C64F4)
1C64EE:  LDR             R1, =(MatFXInfo_ptr - 0x1C64F6)
1C64F0:  ADD             R0, PC; RwEngineInstance_ptr
1C64F2:  ADD             R1, PC; MatFXInfo_ptr
1C64F4:  LDR             R0, [R0]; RwEngineInstance
1C64F6:  LDR             R1, [R1]; MatFXInfo
1C64F8:  LDR             R2, [R0]
1C64FA:  LDR             R0, [R1,#(dword_6B7244 - 0x6B723C)]
1C64FC:  MOV             R1, R5
1C64FE:  LDR.W           R2, [R2,#0x140]
1C6502:  BLX             R2
1C6504:  LDR             R0, =(MatFXMaterialDataOffset_ptr - 0x1C650C)
1C6506:  MOVS            R1, #0
1C6508:  ADD             R0, PC; MatFXMaterialDataOffset_ptr
1C650A:  LDR             R0, [R0]; MatFXMaterialDataOffset
1C650C:  LDR             R0, [R0]
1C650E:  STR             R1, [R4,R0]
1C6510:  MOV             R0, R4
1C6512:  POP             {R4,R5,R7,PC}
