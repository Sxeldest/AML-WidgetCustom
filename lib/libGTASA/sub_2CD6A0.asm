; =========================================================
; Game Engine Function: sub_2CD6A0
; Address            : 0x2CD6A0 - 0x2CD6C0
; =========================================================

2CD6A0:  PUSH            {R4,R6,R7,LR}
2CD6A2:  ADD             R7, SP, #8
2CD6A4:  MOV             R4, R0
2CD6A6:  LDR             R0, =(dword_70CB1C - 0x2CD6AE)
2CD6A8:  LDR             R1, [R1]
2CD6AA:  ADD             R0, PC; dword_70CB1C
2CD6AC:  LDR             R2, [R4]
2CD6AE:  STR             R1, [R4,#4]
2CD6B0:  LDR             R1, [R0]
2CD6B2:  CMP             R2, R1
2CD6B4:  ITT NE
2CD6B6:  MOVNE           R0, R4
2CD6B8:  BLXNE           j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
2CD6BC:  MOV             R0, R4
2CD6BE:  POP             {R4,R6,R7,PC}
