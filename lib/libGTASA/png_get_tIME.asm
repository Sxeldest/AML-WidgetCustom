; =========================================================
; Game Engine Function: png_get_tIME
; Address            : 0x1F3E14 - 0x1F3E3C
; =========================================================

1F3E14:  MOV             R3, R0
1F3E16:  MOVS            R0, #0
1F3E18:  CMP             R3, #0
1F3E1A:  IT EQ
1F3E1C:  BXEQ            LR
1F3E1E:  CMP             R1, #0
1F3E20:  ITT NE
1F3E22:  MOVNE           R0, #0
1F3E24:  CMPNE           R2, #0
1F3E26:  BEQ             locret_1F3E3A
1F3E28:  LDR             R3, [R1,#8]
1F3E2A:  ANDS.W          R3, R3, #0x200
1F3E2E:  ITTT NE
1F3E30:  ADDNE.W         R0, R1, #0x8C
1F3E34:  STRNE           R0, [R2]
1F3E36:  MOVNE.W         R0, #0x200
1F3E3A:  BX              LR
