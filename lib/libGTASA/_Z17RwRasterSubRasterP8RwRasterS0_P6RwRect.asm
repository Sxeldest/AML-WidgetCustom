; =========================================================
; Game Engine Function: _Z17RwRasterSubRasterP8RwRasterS0_P6RwRect
; Address            : 0x1DA9F4 - 0x1DAA4C
; =========================================================

1DA9F4:  PUSH            {R4-R7,LR}
1DA9F6:  ADD             R7, SP, #0xC
1DA9F8:  PUSH.W          {R11}
1DA9FC:  MOV             R4, R0
1DA9FE:  MOV             R5, R1
1DAA00:  LDRSB.W         R0, [R4,#0x21]
1DAA04:  CMP.W           R0, #0xFFFFFFFF
1DAA08:  BLE             loc_1DAA0E
1DAA0A:  MOVS            R6, #0
1DAA0C:  B               loc_1DAA44
1DAA0E:  LDR             R1, [R2,#8]
1DAA10:  MOVS            R6, #0
1DAA12:  STR             R1, [R4,#0xC]
1DAA14:  LDR             R1, [R2,#0xC]
1DAA16:  STR             R1, [R4,#0x10]
1DAA18:  LDR             R0, =(RwEngineInstance_ptr - 0x1DAA22)
1DAA1A:  LDRH            R1, [R5,#0x1C]
1DAA1C:  LDR             R3, [R2]
1DAA1E:  ADD             R0, PC; RwEngineInstance_ptr
1DAA20:  ADD             R1, R3
1DAA22:  STRH            R1, [R4,#0x1C]
1DAA24:  LDR             R0, [R0]; RwEngineInstance
1DAA26:  LDRH            R1, [R5,#0x1E]
1DAA28:  LDR             R2, [R2,#4]
1DAA2A:  ADD             R1, R2
1DAA2C:  STRH            R1, [R4,#0x1E]
1DAA2E:  LDR             R0, [R0]
1DAA30:  MOV             R1, R5
1DAA32:  MOVS            R2, #0
1DAA34:  LDR             R3, [R0,#0x78]
1DAA36:  MOV             R0, R4
1DAA38:  BLX             R3
1DAA3A:  CMP             R0, #0
1DAA3C:  ITTT NE
1DAA3E:  LDRNE           R0, [R5]
1DAA40:  STRNE           R0, [R4]
1DAA42:  MOVNE           R6, R4
1DAA44:  MOV             R0, R6
1DAA46:  POP.W           {R11}
1DAA4A:  POP             {R4-R7,PC}
