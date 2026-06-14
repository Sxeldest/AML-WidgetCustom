; =========================================================
; Game Engine Function: sub_FCD28
; Address            : 0xFCD28 - 0xFCE72
; =========================================================

FCD28:  PUSH            {R4-R7,LR}
FCD2A:  ADD             R7, SP, #0xC
FCD2C:  PUSH.W          {R8-R11}
FCD30:  SUB             SP, SP, #0x4C
FCD32:  MOV             R10, R0
FCD34:  LDR             R0, =(off_23494C - 0xFCD40)
FCD36:  MOV             R8, R1
FCD38:  MOVW            R1, #0xA819
FCD3C:  ADD             R0, PC; off_23494C
FCD3E:  MOVT            R1, #0x40 ; '@'
FCD42:  MOV             R9, R2
FCD44:  MOVW            R2, #0x9A43
FCD48:  LDR             R0, [R0]; dword_23DF24
FCD4A:  MOVT            R2, #0x40 ; '@'
FCD4E:  LDR             R6, [R7,#arg_4]
FCD50:  LDR             R0, [R0]
FCD52:  SUB.W           R0, LR, R0
FCD56:  SUBS            R1, R0, R1
FCD58:  IT NE
FCD5A:  MOVNE           R1, #1
FCD5C:  SUBS            R0, R0, R2
FCD5E:  IT NE
FCD60:  MOVNE           R0, #1
FCD62:  TST             R0, R1
FCD64:  BNE             loc_FCDD4
FCD66:  LDR             R0, =(off_23496C - 0xFCD6C)
FCD68:  ADD             R0, PC; off_23496C
FCD6A:  LDR.W           R11, [R0]; dword_23DEF4
FCD6E:  LDR.W           R0, [R11]
FCD72:  CBZ             R0, loc_FCDD4
FCD74:  STR             R3, [SP,#0x68+var_60]
FCD76:  BL              sub_1082E4
FCD7A:  LDR.W           R0, [R0,#0x590]
FCD7E:  LDR             R3, [SP,#0x68+var_60]
FCD80:  LDR             R6, [R7,#arg_4]
FCD82:  CMP             R0, R8
FCD84:  BNE             loc_FCDD4
FCD86:  LDR.W           R0, [R11]
FCD8A:  LDR.W           R0, [R0,#0x3B0]
FCD8E:  LDR             R5, [R0,#4]
FCD90:  BL              sub_1082E4
FCD94:  LDR.W           R1, [R0,#0x590]
FCD98:  LDR             R3, [SP,#0x68+var_60]
FCD9A:  LDR             R6, [R7,#arg_4]
FCD9C:  CBZ             R1, loc_FCDD4
FCD9E:  MOVW            R0, #0xEA60
FCDA2:  ADDS            R2, R5, R0
FCDA4:  LDRD.W          R0, R2, [R2]
FCDA8:  CMP             R0, R2
FCDAA:  BEQ             loc_FCDC6
FCDAC:  MOV.W           R12, #0x1F40
FCDB0:  LDR             R4, [R0]
FCDB2:  ADD.W           R4, R5, R4,LSL#2
FCDB6:  LDR.W           R4, [R4,R12]
FCDBA:  CMP             R4, R1
FCDBC:  BEQ             loc_FCDC6
FCDBE:  ADDS            R0, #4
FCDC0:  CMP             R0, R2
FCDC2:  BNE             loc_FCDB0
FCDC4:  B               loc_FCDD4
FCDC6:  CMP             R0, R2
FCDC8:  ITTT NE
FCDCA:  LDRHNE          R4, [R0]
FCDCC:  MOVWNE          R0, #0xFFFF
FCDD0:  CMPNE           R4, R0
FCDD2:  BNE             loc_FCDF0
FCDD4:  LDR             R0, =(off_2474E4 - 0xFCDDE)
FCDD6:  MOV             R1, R8
FCDD8:  MOV             R2, R9
FCDDA:  ADD             R0, PC; off_2474E4
FCDDC:  LDR             R5, [R0]
FCDDE:  LDR             R0, [R7,#arg_0]
FCDE0:  STRD.W          R0, R6, [SP,#0x68+var_68]
FCDE4:  MOV             R0, R10
FCDE6:  BLX             R5
FCDE8:  ADD             SP, SP, #0x4C ; 'L'
FCDEA:  POP.W           {R8-R11}
FCDEE:  POP             {R4-R7,PC}
FCDF0:  LSRS            R0, R4, #4
FCDF2:  CMP             R0, #0x7C ; '|'
FCDF4:  BLS             loc_FCDFA
FCDF6:  MOVS            R5, #0
FCDF8:  B               loc_FCE10
FCDFA:  MOV             R0, R5
FCDFC:  MOV             R1, R4
FCDFE:  BL              sub_F2396
FCE02:  CMP             R0, #0
FCE04:  ITE NE
FCE06:  LDRNE.W         R5, [R5,R4,LSL#2]
FCE0A:  MOVEQ           R5, #0
FCE0C:  LDR             R6, [R7,#arg_4]
FCE0E:  LDR             R3, [SP,#0x68+var_60]
FCE10:  CMP             R5, #0
FCE12:  BEQ             loc_FCDD4
FCE14:  LDR.W           R0, [R11]
FCE18:  MOVW            R1, #0x13BC
FCE1C:  LDR.W           R0, [R0,#0x3B0]
FCE20:  LDR             R0, [R0]
FCE22:  LDR.W           R11, [R0,R1]
FCE26:  CMP.W           R11, #0
FCE2A:  BEQ             loc_FCDD4
FCE2C:  MOV             R0, R5
FCE2E:  BL              sub_109F36
FCE32:  CBZ             R0, loc_FCE64
FCE34:  ADD             R1, SP, #0x68+var_5C
FCE36:  MOV             R0, R5
FCE38:  BL              sub_F8910
FCE3C:  VMOV.F32        S0, #2.5
FCE40:  VLDR            S2, [SP,#0x68+var_2C]
FCE44:  VLDR            S4, [SP,#0x68+var_28]
FCE48:  LDR.W           R0, [R11,#0x1C]
FCE4C:  LDR             R3, [SP,#0x68+var_24]
FCE4E:  VADD.F32        S2, S2, S0
FCE52:  VADD.F32        S0, S4, S0
FCE56:  VMOV            R1, S2
FCE5A:  VMOV            R2, S0
FCE5E:  BL              sub_104098
FCE62:  B               loc_FCE6C
FCE64:  MOV             R0, R11
FCE66:  MOV             R1, R4
FCE68:  BL              sub_1414B4
FCE6C:  LDR             R6, [R7,#arg_4]
FCE6E:  LDR             R3, [SP,#0x68+var_60]
FCE70:  B               loc_FCDD4
