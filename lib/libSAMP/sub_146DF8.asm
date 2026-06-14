; =========================================================
; Game Engine Function: sub_146DF8
; Address            : 0x146DF8 - 0x146EC8
; =========================================================

146DF8:  PUSH            {R4,R5,R7,LR}
146DFA:  ADD             R7, SP, #8
146DFC:  SUB.W           SP, SP, #0x238
146E00:  LDRD.W          R1, R0, [R0]; src
146E04:  MOVS            R3, #0
146E06:  ASRS            R2, R0, #0x1F
146E08:  ADD.W           R0, R0, R2,LSR#29
146E0C:  MOVS            R2, #1
146E0E:  ADD.W           R2, R2, R0,ASR#3; size
146E12:  ADD             R0, SP, #0x240+var_130; int
146E14:  BL              sub_17D4F2
146E18:  LDR             R0, =(off_23496C - 0x146E1E)
146E1A:  ADD             R0, PC; off_23496C
146E1C:  LDR             R0, [R0]; dword_23DEF4
146E1E:  LDR             R0, [R0]
146E20:  CMP             R0, #0
146E22:  BEQ             loc_146EBC
146E24:  LDR.W           R0, [R0,#0x3B0]
146E28:  LDR             R5, [R0]
146E2A:  CMP             R5, #0
146E2C:  BEQ             loc_146EBC
146E2E:  ADD             R0, SP, #0x240+dest; int
146E30:  MOVW            R1, #0x101; n
146E34:  BLX             sub_22178C
146E38:  ADD             R0, SP, #0x240+var_130; int
146E3A:  SUB.W           R1, R7, #-var_A; int
146E3E:  MOVS            R2, #0x10
146E40:  MOVS            R3, #1
146E42:  BL              sub_17D786
146E46:  ADD             R0, SP, #0x240+var_130; int
146E48:  ADD             R1, SP, #0x240+var_10; int
146E4A:  MOVS            R2, #0x20 ; ' '
146E4C:  MOVS            R3, #1
146E4E:  BL              sub_17D786
146E52:  ADD             R0, SP, #0x240+var_130; int
146E54:  ADD             R1, SP, #0x240+var_14; int
146E56:  MOVS            R2, #0x20 ; ' '
146E58:  MOVS            R3, #1
146E5A:  BL              sub_17D786
146E5E:  ADD             R0, SP, #0x240+var_130; int
146E60:  ADD             R1, SP, #0x240+var_18; int
146E62:  MOVS            R2, #0x20 ; ' '
146E64:  MOVS            R3, #1
146E66:  BL              sub_17D786
146E6A:  ADD             R0, SP, #0x240+var_130; int
146E6C:  SUB.W           R1, R7, #-var_19; int
146E70:  MOVS            R2, #8
146E72:  MOVS            R3, #1
146E74:  BL              sub_17D786
146E78:  LDRB.W          R2, [R7,#var_19]
146E7C:  CMP             R2, #0x90
146E7E:  BHI             loc_146EBC
146E80:  ADD             R4, SP, #0x240+dest
146E82:  ADD             R0, SP, #0x240+var_130; int
146E84:  MOV             R1, R4; dest
146E86:  BL              sub_17D744
146E8A:  LDRH.W          R1, [R7,#var_A]; int
146E8E:  MOVS            R2, #0
146E90:  LDRB.W          R0, [R7,#var_19]
146E94:  CMP.W           R1, #0x3EC
146E98:  STRB            R2, [R4,R0]
146E9A:  BHI             loc_146EBC
146E9C:  ADDS            R0, R5, R1
146E9E:  LDRB.W          R0, [R0,#0xFB4]
146EA2:  CBZ             R0, loc_146EBC
146EA4:  LDR             R0, =(off_234A28 - 0x146EAC)
146EA6:  LDR             R3, [SP,#0x240+var_10]; int
146EA8:  ADD             R0, PC; off_234A28
146EAA:  LDRD.W          R5, R2, [SP,#0x240+var_18]
146EAE:  LDR             R0, [R0]; dword_23DF08
146EB0:  LDR             R0, [R0]; int
146EB2:  STRD.W          R2, R5, [SP,#0x240+var_240]; float
146EB6:  ADD             R2, SP, #0x240+dest; s
146EB8:  BL              sub_E3258
146EBC:  ADD             R0, SP, #0x240+var_130
146EBE:  BL              sub_17D542
146EC2:  ADD.W           SP, SP, #0x238
146EC6:  POP             {R4,R5,R7,PC}
