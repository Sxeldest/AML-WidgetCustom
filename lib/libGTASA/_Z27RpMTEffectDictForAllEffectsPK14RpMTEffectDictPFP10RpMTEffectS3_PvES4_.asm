; =========================================================
; Game Engine Function: _Z27RpMTEffectDictForAllEffectsPK14RpMTEffectDictPFP10RpMTEffectS3_PvES4_
; Address            : 0x1C5D4C - 0x1C5D76
; =========================================================

1C5D4C:  PUSH            {R4-R7,LR}
1C5D4E:  ADD             R7, SP, #0xC
1C5D50:  PUSH.W          {R8}
1C5D54:  MOV             R5, R0
1C5D56:  MOV             R8, R2
1C5D58:  LDR             R0, [R5]
1C5D5A:  MOV             R6, R1
1C5D5C:  CMP             R0, R5
1C5D5E:  BEQ             loc_1C5D6E
1C5D60:  LDR.W           R4, [R0],#-0x28
1C5D64:  MOV             R1, R8
1C5D66:  BLX             R6
1C5D68:  CMP             R0, #0
1C5D6A:  MOV             R0, R4
1C5D6C:  BNE             loc_1C5D5C
1C5D6E:  MOV             R0, R5
1C5D70:  POP.W           {R8}
1C5D74:  POP             {R4-R7,PC}
