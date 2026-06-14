; =========================================================
; Game Engine Function: sub_8AF74
; Address            : 0x8AF74 - 0x8AFE8
; =========================================================

8AF74:  PUSH            {R7,LR}
8AF76:  MOV             R7, SP
8AF78:  LDR             R2, =(dword_1ACF68 - 0x8AF82)
8AF7A:  MOVW            R12, #0x19D0
8AF7E:  ADD             R2, PC; dword_1ACF68
8AF80:  LDR             R2, [R2]
8AF82:  LDR.W           LR, [R2,R12]
8AF86:  ADD             R2, R12
8AF88:  SUBS.W          R3, LR, R0
8AF8C:  IT NE
8AF8E:  MOVNE           R3, #1
8AF90:  CMP             LR, R0
8AF92:  STRB            R3, [R2,#0xC]
8AF94:  BEQ             loc_8AFA4
8AF96:  MOVS            R3, #0
8AF98:  CMP             R0, #0
8AF9A:  STRH            R3, [R2,#0xE]
8AF9C:  STR             R3, [R2,#8]
8AF9E:  IT NE
8AFA0:  STRDNE.W        R0, R3, [R2,#0x38]
8AFA4:  MOVS            R3, #0
8AFA6:  CMP             R0, #0
8AFA8:  STRD.W          R3, R3, [R2,#0x14]
8AFAC:  STR             R0, [R2]
8AFAE:  STR             R1, [R2,#0x24]
8AFB0:  STRB            R3, [R2,#0xD]
8AFB2:  STRB            R3, [R2,#0x10]
8AFB4:  IT EQ
8AFB6:  POPEQ           {R7,PC}
8AFB8:  LDR.W           R1, [R2,#0xEC]
8AFBC:  STR             R0, [R2,#4]
8AFBE:  CMP             R1, R0
8AFC0:  BEQ             loc_8AFD2
8AFC2:  LDR.W           R1, [R2,#0xF8]
8AFC6:  CMP             R1, R0
8AFC8:  BEQ             loc_8AFD2
8AFCA:  LDR.W           R1, [R2,#0xFC]
8AFCE:  CMP             R1, R0
8AFD0:  BNE             loc_8AFD8
8AFD2:  MOVS            R1, #2
8AFD4:  STR             R1, [R2,#0x28]
8AFD6:  POP             {R7,PC}
8AFD8:  LDR.W           R3, [R2,#0x100]
8AFDC:  MOVS            R1, #1
8AFDE:  CMP             R3, R0
8AFE0:  IT EQ
8AFE2:  MOVEQ           R1, #2
8AFE4:  STR             R1, [R2,#0x28]
8AFE6:  POP             {R7,PC}
