; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequence12SetNumFramesEibbPh
; Address            : 0x38B89C - 0x38B8F4
; =========================================================

38B89C:  PUSH            {R4-R7,LR}
38B89E:  ADD             R7, SP, #0xC
38B8A0:  PUSH.W          {R11}
38B8A4:  MOV             R4, R0
38B8A6:  MOV             R6, R1
38B8A8:  LDR             R0, [R7,#arg_0]
38B8AA:  MOV             R5, R3
38B8AC:  LDRH            R1, [R4,#4]
38B8AE:  CMP             R2, #1
38B8B0:  BNE             loc_38B8C6
38B8B2:  CMP             R0, #0
38B8B4:  ORR.W           R1, R1, #3
38B8B8:  STRH            R1, [R4,#4]
38B8BA:  BNE             loc_38B8DE
38B8BC:  MOVS            R0, #0x20 ; ' '
38B8BE:  CMP             R5, #0
38B8C0:  IT NE
38B8C2:  MOVNE           R0, #0x10
38B8C4:  B               loc_38B8D8
38B8C6:  CMP             R0, #0
38B8C8:  ORR.W           R1, R1, #1; unsigned int
38B8CC:  STRH            R1, [R4,#4]
38B8CE:  BNE             loc_38B8DE
38B8D0:  MOVS            R0, #0x14
38B8D2:  CMP             R5, #0
38B8D4:  IT NE
38B8D6:  MOVNE           R0, #0xA
38B8D8:  MULS            R0, R6; byte_count
38B8DA:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
38B8DE:  STRH            R6, [R4,#6]
38B8E0:  CMP             R5, #1
38B8E2:  STR             R0, [R4,#8]
38B8E4:  ITTT EQ
38B8E6:  LDRHEQ          R0, [R4,#4]
38B8E8:  ORREQ.W         R0, R0, #4
38B8EC:  STRHEQ          R0, [R4,#4]
38B8EE:  POP.W           {R11}
38B8F2:  POP             {R4-R7,PC}
