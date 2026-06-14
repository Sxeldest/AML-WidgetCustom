; =========================================================
; Game Engine Function: sub_11CD34
; Address            : 0x11CD34 - 0x11CDF4
; =========================================================

11CD34:  PUSH            {R4-R7,LR}
11CD36:  ADD             R7, SP, #0xC
11CD38:  PUSH.W          {R8-R11}
11CD3C:  SUB             SP, SP, #0x4C
11CD3E:  MOV             R4, R0
11CD40:  LDR             R0, =(off_23494C - 0x11CD4A)
11CD42:  LDR             R1, =(sub_11CE40+1 - 0x11CD4E)
11CD44:  MOVS            R2, #0
11CD46:  ADD             R0, PC; off_23494C
11CD48:  MOV             R9, SP
11CD4A:  ADD             R1, PC; sub_11CE40
11CD4C:  MOV             R3, R4
11CD4E:  LDR             R0, [R0]; dword_23DF24
11CD50:  LDR.W           R10, [R0]
11CD54:  MOV             R0, R9
11CD56:  STR             R2, [R4]
11CD58:  MOVS            R2, #0
11CD5A:  BL              sub_11CEB4
11CD5E:  ADD.W           R11, SP, #0x68+var_50
11CD62:  MOV             R1, R9
11CD64:  MOV             R0, R11
11CD66:  BL              sub_11D048
11CD6A:  BL              sub_11CFF0
11CD6E:  LDR             R0, =(unk_263790 - 0x11CD74)
11CD70:  ADD             R0, PC; unk_263790
11CD72:  LDR             R6, [R0,#(dword_2637A0 - 0x263790)]
11CD74:  CBNZ            R6, loc_11CDA8
11CD76:  ADD.W           R8, SP, #0x68+var_50
11CD7A:  ADD             R0, SP, #0x68+var_38
11CD7C:  MOV             R1, R8
11CD7E:  BL              sub_11D048
11CD82:  BL              sub_11CFF0
11CD86:  LDR             R0, =(unk_263790 - 0x11CD8C)
11CD88:  ADD             R0, PC; unk_263790
11CD8A:  ADD             R5, SP, #0x68+var_38
11CD8C:  MOV             R1, R5
11CD8E:  BL              sub_11D074
11CD92:  LDR             R0, [SP,#0x68+var_28]
11CD94:  CMP             R5, R0
11CD96:  BEQ             loc_11CD9E
11CD98:  CBZ             R0, loc_11CDA8
11CD9A:  MOVS            R1, #5
11CD9C:  B               loc_11CDA0
11CD9E:  MOVS            R1, #4
11CDA0:  LDR             R2, [R0]
11CDA2:  LDR.W           R1, [R2,R1,LSL#2]
11CDA6:  BLX             R1
11CDA8:  LDR             R0, [SP,#0x68+var_40]
11CDAA:  CMP             R11, R0
11CDAC:  BEQ             loc_11CDB4
11CDAE:  CBZ             R0, loc_11CDBE
11CDB0:  MOVS            R1, #5
11CDB2:  B               loc_11CDB6
11CDB4:  MOVS            R1, #4
11CDB6:  LDR             R2, [R0]
11CDB8:  LDR.W           R1, [R2,R1,LSL#2]
11CDBC:  BLX             R1
11CDBE:  CBNZ            R6, loc_11CDD4
11CDC0:  MOVW            R0, #0xFAC
11CDC4:  LDR             R1, =(sub_11CFC4+1 - 0x11CDD0)
11CDC6:  MOVT            R0, #0x67 ; 'g'
11CDCA:  ADD             R0, R10
11CDCC:  ADD             R1, PC; sub_11CFC4
11CDCE:  MOV             R2, R4
11CDD0:  BL              sub_164196
11CDD4:  LDR             R0, [SP,#0x68+var_58]
11CDD6:  CMP             R9, R0
11CDD8:  BEQ             loc_11CDE0
11CDDA:  CBZ             R0, loc_11CDEA
11CDDC:  MOVS            R1, #5
11CDDE:  B               loc_11CDE2
11CDE0:  MOVS            R1, #4
11CDE2:  LDR             R2, [R0]
11CDE4:  LDR.W           R1, [R2,R1,LSL#2]
11CDE8:  BLX             R1
11CDEA:  MOV             R0, R4
11CDEC:  ADD             SP, SP, #0x4C ; 'L'
11CDEE:  POP.W           {R8-R11}
11CDF2:  POP             {R4-R7,PC}
