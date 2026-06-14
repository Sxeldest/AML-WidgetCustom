; =========================================================
; Game Engine Function: alEffectfv
; Address            : 0x1DB37C - 0x1DB3E8
; =========================================================

1DB37C:  PUSH            {R4-R7,R11,LR}
1DB380:  ADD             R11, SP, #0x10
1DB384:  MOV             R5, R2
1DB388:  MOV             R6, R1
1DB38C:  MOV             R7, R0
1DB390:  BL              j_GetContextRef
1DB394:  MOV             R4, R0
1DB398:  CMP             R4, #0
1DB39C:  POPEQ           {R4-R7,R11,PC}
1DB3A0:  LDR             R0, [R4,#0xFC]
1DB3A4:  MOV             R1, R7
1DB3A8:  ADD             R0, R0, #0x60 ; '`'
1DB3AC:  BL              j_LookupUIntMapKey
1DB3B0:  CMP             R0, #0
1DB3B4:  BEQ             loc_1DB3D0
1DB3B8:  LDR             R7, [R0,#0xA0]
1DB3BC:  MOV             R1, R4
1DB3C0:  MOV             R2, R6
1DB3C4:  MOV             R3, R5
1DB3C8:  BLX             R7
1DB3CC:  B               loc_1DB3DC
1DB3D0:  MOV             R0, R4
1DB3D4:  MOVW            R1, #0xA001
1DB3D8:  BL              j_alSetError
1DB3DC:  MOV             R0, R4
1DB3E0:  POP             {R4-R7,R11,LR}
1DB3E4:  B               j_ALCcontext_DecRef
