; =========================================================
; Game Engine Function: _ZN19CAnimBlendClumpData12ForAllFramesEPFvP18AnimBlendFrameDataPvES2_
; Address            : 0x38A0CA - 0x38A0FA
; =========================================================

38A0CA:  PUSH            {R4-R7,LR}
38A0CC:  ADD             R7, SP, #0xC
38A0CE:  PUSH.W          {R8,R9,R11}
38A0D2:  MOV             R6, R0
38A0D4:  MOV             R8, R2
38A0D6:  LDR             R0, [R6,#8]
38A0D8:  MOV             R9, R1
38A0DA:  CMP             R0, #1
38A0DC:  BLT             loc_38A0F4
38A0DE:  MOVS            R4, #0
38A0E0:  MOVS            R5, #0
38A0E2:  LDR             R0, [R6,#0x10]
38A0E4:  MOV             R1, R8
38A0E6:  ADD             R0, R4
38A0E8:  BLX             R9
38A0EA:  LDR             R0, [R6,#8]
38A0EC:  ADDS            R5, #1
38A0EE:  ADDS            R4, #0x18
38A0F0:  CMP             R5, R0
38A0F2:  BLT             loc_38A0E2
38A0F4:  POP.W           {R8,R9,R11}
38A0F8:  POP             {R4-R7,PC}
