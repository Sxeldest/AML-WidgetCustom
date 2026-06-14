; =========================================================
; Game Engine Function: sub_14DCC8
; Address            : 0x14DCC8 - 0x14DD48
; =========================================================

14DCC8:  PUSH            {R4,R5,R7,LR}
14DCCA:  ADD             R7, SP, #8
14DCCC:  SUB.W           SP, SP, #0x220
14DCD0:  LDRD.W          R4, R5, [R0]
14DCD4:  ADD             R0, SP, #0x228+dest; int
14DCD6:  MOV.W           R1, #0x100; n
14DCDA:  BLX             sub_22178C
14DCDE:  ASRS            R0, R5, #0x1F
14DCE0:  MOVS            R1, #1
14DCE2:  ADD.W           R0, R5, R0,LSR#29
14DCE6:  MOVS            R3, #0
14DCE8:  ADD.W           R2, R1, R0,ASR#3; size
14DCEC:  MOV             R0, SP; int
14DCEE:  MOV             R1, R4; src
14DCF0:  BL              sub_17D4F2
14DCF4:  ADD             R1, SP, #0x228+var_10C; int
14DCF6:  MOVS            R2, #0x20 ; ' '
14DCF8:  MOVS            R3, #1
14DCFA:  BL              sub_17D786
14DCFE:  ADD             R1, SP, #0x228+var_110; int
14DD00:  MOV             R0, SP; int
14DD02:  MOVS            R2, #0x20 ; ' '
14DD04:  MOVS            R3, #1
14DD06:  BL              sub_17D786
14DD0A:  ADD             R1, SP, #0x228+var_114; int
14DD0C:  MOV             R0, SP; int
14DD0E:  MOVS            R2, #0x20 ; ' '
14DD10:  MOVS            R3, #1
14DD12:  BL              sub_17D786
14DD16:  LDR             R2, [SP,#0x228+var_114]
14DD18:  CMP             R2, #0xC8
14DD1A:  BHI             loc_14DD3C
14DD1C:  ADD             R4, SP, #0x228+dest
14DD1E:  MOV             R0, SP; int
14DD20:  MOV             R1, R4; dest
14DD22:  BL              sub_17D744
14DD26:  LDR             R0, =(off_234970 - 0x14DD30)
14DD28:  ADD             R3, SP, #0x228+var_114
14DD2A:  MOVS            R5, #0
14DD2C:  ADD             R0, PC; off_234970
14DD2E:  LDM             R3, {R1-R3}
14DD30:  LDR             R0, [R0]; dword_23DEF0
14DD32:  STRB            R5, [R4,R1]
14DD34:  LDR             R0, [R0]
14DD36:  MOV             R1, R4
14DD38:  BL              sub_FA2C0
14DD3C:  MOV             R0, SP
14DD3E:  BL              sub_17D542
14DD42:  ADD.W           SP, SP, #0x220
14DD46:  POP             {R4,R5,R7,PC}
