; =========================================================
; Game Engine Function: sub_1C4BE4
; Address            : 0x1C4BE4 - 0x1C4C44
; =========================================================

1C4BE4:  PUSH            {R4-R7,LR}
1C4BE6:  ADD             R7, SP, #0xC
1C4BE8:  PUSH.W          {R8-R10}
1C4BEC:  MOV             R8, R1
1C4BEE:  MOV             R9, R0
1C4BF0:  LDR.W           R6, [R9,R8]
1C4BF4:  CBZ             R6, loc_1C4C3C
1C4BF6:  LDR             R1, [R6,#4]
1C4BF8:  CBZ             R1, loc_1C4C1A
1C4BFA:  ADD.W           R5, R6, #8
1C4BFE:  MOV.W           R10, #0
1C4C02:  MOVS            R4, #0
1C4C04:  LDR.W           R0, [R5,R4,LSL#2]
1C4C08:  CBZ             R0, loc_1C4C14
1C4C0A:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1C4C0E:  STR.W           R10, [R5,R4,LSL#2]
1C4C12:  LDR             R1, [R6,#4]
1C4C14:  ADDS            R4, #1
1C4C16:  CMP             R4, R1
1C4C18:  BCC             loc_1C4C04
1C4C1A:  LDR             R0, [R6,#0x30]
1C4C1C:  CBZ             R0, loc_1C4C26
1C4C1E:  BLX             j__Z17RpMTEffectDestroyP10RpMTEffect; RpMTEffectDestroy(RpMTEffect *)
1C4C22:  MOVS            R0, #0
1C4C24:  STR             R0, [R6,#0x30]
1C4C26:  LDR             R0, =(RwEngineInstance_ptr - 0x1C4C2C)
1C4C28:  ADD             R0, PC; RwEngineInstance_ptr
1C4C2A:  LDR             R0, [R0]; RwEngineInstance
1C4C2C:  LDR             R0, [R0]
1C4C2E:  LDR.W           R1, [R0,#0x130]
1C4C32:  MOV             R0, R6
1C4C34:  BLX             R1
1C4C36:  MOVS            R0, #0
1C4C38:  STR.W           R0, [R9,R8]
1C4C3C:  MOV             R0, R9
1C4C3E:  POP.W           {R8-R10}
1C4C42:  POP             {R4-R7,PC}
