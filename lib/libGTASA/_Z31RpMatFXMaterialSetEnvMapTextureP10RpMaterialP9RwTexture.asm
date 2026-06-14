; =========================================================
; Game Engine Function: _Z31RpMatFXMaterialSetEnvMapTextureP10RpMaterialP9RwTexture
; Address            : 0x1C74A4 - 0x1C74F4
; =========================================================

1C74A4:  PUSH            {R4-R7,LR}
1C74A6:  ADD             R7, SP, #0xC
1C74A8:  PUSH.W          {R11}
1C74AC:  MOV             R4, R0
1C74AE:  LDR             R0, =(MatFXMaterialDataOffset_ptr - 0x1C74B6)
1C74B0:  MOV             R5, R1
1C74B2:  ADD             R0, PC; MatFXMaterialDataOffset_ptr
1C74B4:  LDR             R0, [R0]; MatFXMaterialDataOffset
1C74B6:  LDR             R0, [R0]
1C74B8:  LDR             R0, [R4,R0]
1C74BA:  LDR             R1, [R0,#0x14]
1C74BC:  CMP             R1, #2
1C74BE:  BNE             loc_1C74C4
1C74C0:  MOVS            R1, #0
1C74C2:  B               loc_1C74CC
1C74C4:  LDR             R1, [R0,#0x2C]
1C74C6:  CMP             R1, #2
1C74C8:  BNE             loc_1C74D6
1C74CA:  MOVS            R1, #1
1C74CC:  ADD.W           R1, R1, R1,LSL#1
1C74D0:  ADD.W           R6, R0, R1,LSL#3
1C74D4:  B               loc_1C74D8
1C74D6:  MOVS            R6, #0
1C74D8:  LDR             R0, [R5,#0x54]
1C74DA:  ADDS            R0, #1
1C74DC:  STR             R0, [R5,#0x54]
1C74DE:  LDR             R0, [R6,#4]
1C74E0:  CBZ             R0, loc_1C74EA
1C74E2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1C74E6:  MOVS            R0, #0
1C74E8:  STR             R0, [R6,#4]
1C74EA:  STR             R5, [R6,#4]
1C74EC:  MOV             R0, R4
1C74EE:  POP.W           {R11}
1C74F2:  POP             {R4-R7,PC}
