; =========================================================
; Game Engine Function: _Z29RpMTEffectDictFindNamedEffectPK14RpMTEffectDictPKc
; Address            : 0x1C5D80 - 0x1C5DC0
; =========================================================

1C5D80:  PUSH            {R4-R7,LR}
1C5D82:  ADD             R7, SP, #0xC
1C5D84:  PUSH.W          {R8}
1C5D88:  MOV             R5, R0
1C5D8A:  MOV             R8, R1
1C5D8C:  LDR             R6, [R5]
1C5D8E:  CMP             R6, R5
1C5D90:  BEQ             loc_1C5DAE
1C5D92:  LDR             R0, =(RwEngineInstance_ptr - 0x1C5D98)
1C5D94:  ADD             R0, PC; RwEngineInstance_ptr
1C5D96:  LDR             R4, [R0]; RwEngineInstance
1C5D98:  LDR             R0, [R4]
1C5D9A:  MOV             R1, R8
1C5D9C:  LDR.W           R2, [R0,#0x110]
1C5DA0:  SUB.W           R0, R6, #0x20 ; ' '
1C5DA4:  BLX             R2
1C5DA6:  CBZ             R0, loc_1C5DB6
1C5DA8:  LDR             R6, [R6]
1C5DAA:  CMP             R6, R5
1C5DAC:  BNE             loc_1C5D98
1C5DAE:  MOVS            R0, #0
1C5DB0:  POP.W           {R8}
1C5DB4:  POP             {R4-R7,PC}
1C5DB6:  SUB.W           R0, R6, #0x28 ; '('
1C5DBA:  POP.W           {R8}
1C5DBE:  POP             {R4-R7,PC}
