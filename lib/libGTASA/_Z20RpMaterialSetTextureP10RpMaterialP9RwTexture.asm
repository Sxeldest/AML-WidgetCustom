; =========================================================
; Game Engine Function: _Z20RpMaterialSetTextureP10RpMaterialP9RwTexture
; Address            : 0x2172A4 - 0x2172CC
; =========================================================

2172A4:  PUSH            {R4,R5,R7,LR}
2172A6:  ADD             R7, SP, #8
2172A8:  MOV             R4, R0
2172AA:  MOV             R5, R1
2172AC:  LDR             R0, [R4]
2172AE:  CMP             R0, R5
2172B0:  BEQ             loc_2172C8
2172B2:  CMP             R5, #0
2172B4:  ITTTT NE
2172B6:  LDRNE           R0, [R5,#0x54]
2172B8:  ADDNE           R0, #1
2172BA:  STRNE           R0, [R5,#0x54]
2172BC:  LDRNE           R0, [R4]
2172BE:  CMP             R0, #0
2172C0:  IT NE
2172C2:  BLXNE           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2172C6:  STR             R5, [R4]
2172C8:  MOV             R0, R4
2172CA:  POP             {R4,R5,R7,PC}
