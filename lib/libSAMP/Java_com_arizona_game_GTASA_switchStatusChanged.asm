; =========================================================
; Game Engine Function: Java_com_arizona_game_GTASA_switchStatusChanged
; Address            : 0x17CE64 - 0x17CEAA
; =========================================================

17CE64:  UXTB            R0, R2
17CE66:  CMP             R0, #0x1B
17CE68:  BHI             locret_17CE88
17CE6A:  LDR             R0, =(dword_381BF4 - 0x17CE70)
17CE6C:  ADD             R0, PC; dword_381BF4
17CE6E:  LDR             R0, [R0]
17CE70:  CMP             R0, #0
17CE72:  IT EQ
17CE74:  BXEQ            LR
17CE76:  LDR             R1, =(off_23496C - 0x17CE7C)
17CE78:  ADD             R1, PC; off_23496C
17CE7A:  LDR             R1, [R1]; dword_23DEF4
17CE7C:  LDR             R1, [R1]
17CE7E:  CBZ             R1, locret_17CE88
17CE80:  CMP             R3, #1
17CE82:  IT EQ
17CE84:  CMPEQ           R2, #2
17CE86:  BEQ             loc_17CE8A
17CE88:  BX              LR
17CE8A:  UXTAB.W         R0, R0, R2
17CE8E:  LDRB.W          R0, [R0,#0x68]
17CE92:  CMP             R0, #0
17CE94:  BEQ             locret_17CE88
17CE96:  LDR             R1, [SP,#arg_0]
17CE98:  LDR             R0, =(off_234A54 - 0x17CEA0)
17CE9A:  CMP             R1, #0
17CE9C:  ADD             R0, PC; off_234A54
17CE9E:  LDR             R0, [R0]; dword_381A0C
17CEA0:  LDR             R0, [R0]
17CEA2:  IT NE
17CEA4:  MOVNE           R1, #1
17CEA6:  B.W             sub_155BC4
