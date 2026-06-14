; =========================================================
; Game Engine Function: sub_18CCDC
; Address            : 0x18CCDC - 0x18CD72
; =========================================================

18CCDC:  ADDS            R0, R1, #1
18CCDE:  ITT EQ
18CCE0:  MOVEQ.W         R0, #0xFFFFFFFF
18CCE4:  BXEQ            LR
18CCE6:  PUSH            {R4-R7,LR}
18CCE8:  ADD             R7, SP, #0x14+var_8
18CCEA:  PUSH.W          {R8-R10}
18CCEE:  SUB             SP, SP, #0x18
18CCF0:  MOV             R8, R3
18CCF2:  MOV             R5, R1
18CCF4:  LDRB            R1, [R2]
18CCF6:  LDRD.W          R0, R3, [R7,#8]
18CCFA:  CBZ             R1, loc_18CD12
18CCFC:  LDR             R1, =(off_234C4C - 0x18CD02)
18CCFE:  ADD             R1, PC; off_234C4C
18CD00:  LDR             R1, [R1]; byte_314318
18CD02:  LDRB            R6, [R1]
18CD04:  CBZ             R6, loc_18CD12
18CD06:  MOVW            R6, #0x6969
18CD0A:  STRH.W          R6, [R2,#1]
18CD0E:  MOVS            R6, #0
18CD10:  STRB            R6, [R1]
18CD12:  STR             R0, [SP,#0x38+var_30.sa_data+2]
18CD14:  REV16           R0, R3
18CD16:  STRH.W          R0, [SP,#0x38+var_30.sa_data]
18CD1A:  MOVS            R0, #2
18CD1C:  STRH.W          R0, [SP,#0x38+var_30]
18CD20:  MOV             R0, R2
18CD22:  MOV             R2, R3
18CD24:  MOV             R1, R8
18CD26:  MOVS            R3, #0
18CD28:  BL              sub_DA454
18CD2C:  LDR             R0, =(off_234930 - 0x18CD3A)
18CD2E:  ADD.W           R10, SP, #0x38+var_30
18CD32:  MOV.W           R9, #0x10
18CD36:  ADD             R0, PC; off_234930
18CD38:  LDR             R4, [R0]; dword_23DF1C
18CD3A:  LDR             R0, =(off_23492C - 0x18CD40)
18CD3C:  ADD             R0, PC; off_23492C
18CD3E:  LDR             R6, [R0]; byte_23CAD5
18CD40:  LDR             R0, [R4]
18CD42:  MOV             R1, R6; buf
18CD44:  MOVS            R3, #0; flags
18CD46:  CMP             R0, #4
18CD48:  IT NE
18CD4A:  MOVNE           R0, #1
18CD4C:  ADD.W           R2, R0, R8; n
18CD50:  MOV             R0, R5; fd
18CD52:  STRD.W          R10, R9, [SP,#0x38+addr]; addr
18CD56:  BLX             sendto
18CD5A:  CMP             R0, #0
18CD5C:  BEQ             loc_18CD40
18CD5E:  ADDS            R0, #1
18CD60:  ADD             SP, SP, #0x18
18CD62:  POP.W           {R8-R10}
18CD66:  POP.W           {R4-R7,LR}
18CD6A:  ITE NE
18CD6C:  MOVNE           R0, #0
18CD6E:  MOVEQ           R0, #1
18CD70:  BX              LR
