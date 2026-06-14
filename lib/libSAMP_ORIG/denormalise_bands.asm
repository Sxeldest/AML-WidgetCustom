; =========================================================
; Game Engine Function: denormalise_bands
; Address            : 0xBDD9C - 0xBDF50
; =========================================================

BDD9C:  PUSH            {R4-R7,LR}
BDD9E:  ADD             R7, SP, #0xC
BDDA0:  PUSH.W          {R8-R11}
BDDA4:  SUB             SP, SP, #0x1C
BDDA6:  STR             R3, [SP,#0x38+var_28]
BDDA8:  MOV             R10, R1
BDDAA:  LDR             R1, [R7,#arg_4]
BDDAC:  MOV             R6, R2
BDDAE:  LDR             R2, [R0,#0x18]
BDDB0:  LDR             R0, [R0,#0x24]
BDDB2:  STRD.W          R2, R1, [SP,#0x38+var_24]
BDDB6:  LDRSH.W         R1, [R2,R1,LSL#1]
BDDBA:  LDR             R3, [R7,#arg_8]
BDDBC:  LDR.W           R9, [R7,#arg_0]
BDDC0:  MUL.W           R4, R1, R3
BDDC4:  LDRD.W          R1, R8, [R7,#arg_C]
BDDC8:  MUL.W           R5, R0, R3
BDDCC:  CMP             R1, #1
BDDCE:  BEQ             loc_BDDDC
BDDD0:  MOV             R0, R5
BDDD2:  BLX             sub_108848
BDDD6:  CMP             R4, R0
BDDD8:  IT GE
BDDDA:  MOVGE           R4, R0
BDDDC:  MOVS            R0, #0
BDDDE:  CMP.W           R8, #0
BDDE2:  STR             R5, [SP,#0x38+var_30]
BDDE4:  IT NE
BDDE6:  MOVNE           R9, R0
BDDE8:  LDR             R1, [SP,#0x38+var_24]
BDDEA:  LDR             R2, [R7,#arg_8]
BDDEC:  LDRSH.W         R1, [R1,R9,LSL#1]
BDDF0:  MUL.W           R5, R1, R2
BDDF4:  LDR             R1, [SP,#0x38+var_20]
BDDF6:  IT NE
BDDF8:  MOVNE           R1, R0
BDDFA:  STR             R1, [SP,#0x38+var_20]
BDDFC:  IT NE
BDDFE:  MOVNE           R4, R0
BDE00:  MOV             R0, R6
BDE02:  STR             R4, [SP,#0x38+var_34]
BDE04:  CMP             R5, #1
BDE06:  BLT             loc_BDE1C
BDE08:  LSLS            R1, R5, #2; n
BDE0A:  MOV             R0, R6; int
BDE0C:  BLX             sub_10967C
BDE10:  MOVS            R1, #0
BDE12:  MOV             R0, R6
BDE14:  ADDS            R1, #1
BDE16:  ADDS            R0, #4
BDE18:  CMP             R1, R5
BDE1A:  BLT             loc_BDE14
BDE1C:  LDR             R1, [SP,#0x38+var_20]
BDE1E:  STR             R6, [SP,#0x38+var_2C]
BDE20:  CMP             R9, R1
BDE22:  BGE.W           loc_BDF36
BDE26:  LDR             R3, =(eMeans_ptr - 0xBDE32)
BDE28:  ADD.W           R1, R10, R5,LSL#1
BDE2C:  LDR             R2, [SP,#0x38+var_24]
BDE2E:  ADD             R3, PC; eMeans_ptr
BDE30:  LDRH.W          LR, [R2,R9,LSL#1]
BDE34:  LDR             R3, [R3]; eMeans
BDE36:  B               loc_BDE66
BDE38:  ADDS.W          R2, R11, #1
BDE3C:  MOV.W           R4, #0x4000
BDE40:  IT EQ
BDE42:  ASREQ           R4, R6, #0x10
BDE44:  MOV.W           R6, #2
BDE48:  IT EQ
BDE4A:  MOVEQ           R6, #1
BDE4C:  LDRSH.W         R2, [R1],#2
BDE50:  ADD.W           R8, R8, #1
BDE54:  CMP             R8, R12
BDE56:  MUL.W           R2, R4, R2
BDE5A:  LSL.W           R2, R2, R6
BDE5E:  STR.W           R2, [R0],#4
BDE62:  BLT             loc_BDE4C
BDE64:  B               loc_BDF30
BDE66:  LDR             R2, [SP,#0x38+var_24]
BDE68:  MOV             R6, R9
BDE6A:  ADD.W           R9, R6, #1
BDE6E:  LDRSB           R4, [R3,R6]
BDE70:  LDR             R5, [R7,#arg_8]
BDE72:  LDRSH.W         R10, [R2,R9,LSL#1]
BDE76:  LDR             R2, [SP,#0x38+var_28]
BDE78:  LDRSH.W         R6, [R2,R6,LSL#1]
BDE7C:  SXTH.W          R2, LR
BDE80:  MUL.W           R8, R2, R5
BDE84:  MOVW            R2, #0x8000
BDE88:  ADD.W           R4, R6, R4,LSL#6
BDE8C:  MOVT            R2, #0xFFFF
BDE90:  CMP             R4, R2
BDE92:  MUL.W           R12, R10, R5
BDE96:  IT LE
BDE98:  MOVLE           R4, R2
BDE9A:  MOVW            R2, #0x7FFF
BDE9E:  CMP             R4, R2
BDEA0:  MOV.W           R6, #0x10
BDEA4:  IT GE
BDEA6:  MOVGE           R4, R2
BDEA8:  UXTH.W          LR, R10
BDEAC:  LSLS            R2, R4, #0x10
BDEAE:  SUB.W           R11, R6, R2,ASR#26
BDEB2:  CMP.W           R11, #0x20 ; ' '
BDEB6:  BLT             loc_BDEC0
BDEB8:  MOV.W           R11, #0
BDEBC:  MOVS            R6, #0
BDEBE:  B               loc_BDF16
BDEC0:  MOVW            R2, #0x3FF0
BDEC4:  MOVW            R5, #0x4FB8
BDEC8:  AND.W           R2, R2, R4,LSL#4
BDECC:  MOVS            R4, #0x39E30000
BDED2:  CMP.W           R11, #0xFFFFFFFF
BDED6:  SMLABB.W        R4, R2, R5, R4
BDEDA:  MOV             R5, #0x7FFF0000
BDEE2:  MOV.W           R4, R4,LSR#16
BDEE6:  SMULBB.W        R4, R4, R2
BDEEA:  AND.W           R4, R5, R4,LSL#1
BDEEE:  MOV             R5, #0x59140000
BDEF6:  ADD             R4, R5
BDEF8:  SMULTB.W        R2, R4, R2
BDEFC:  MOVW            R4, #0xFFFF
BDF00:  MOV.W           R2, R2,LSL#1
BDF04:  BIC.W           R2, R2, R4
BDF08:  MOV             R4, #0x3FFF0000
BDF10:  ADD.W           R6, R2, R4
BDF14:  BLE             loc_BDE38
BDF16:  ASRS            R4, R6, #0x10
BDF18:  LDRSH.W         R2, [R1],#2
BDF1C:  ADD.W           R8, R8, #1
BDF20:  CMP             R8, R12
BDF22:  SMULBB.W        R2, R4, R2
BDF26:  ASR.W           R2, R2, R11
BDF2A:  STR.W           R2, [R0],#4
BDF2E:  BLT             loc_BDF18
BDF30:  LDR             R2, [SP,#0x38+var_20]
BDF32:  CMP             R9, R2
BDF34:  BNE             loc_BDE66
BDF36:  LDR             R2, [SP,#0x38+var_34]
BDF38:  LDR             R1, [SP,#0x38+var_30]
BDF3A:  LDR             R0, [SP,#0x38+var_2C]
BDF3C:  SUBS            R1, R1, R2
BDF3E:  ADD.W           R0, R0, R2,LSL#2; int
BDF42:  LSLS            R1, R1, #2; n
BDF44:  BLX             sub_10967C
BDF48:  ADD             SP, SP, #0x1C
BDF4A:  POP.W           {R8-R11}
BDF4E:  POP             {R4-R7,PC}
