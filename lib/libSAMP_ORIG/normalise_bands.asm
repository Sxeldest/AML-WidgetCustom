; =========================================================
; Game Engine Function: normalise_bands
; Address            : 0xBDCB8 - 0xBDD9C
; =========================================================

BDCB8:  PUSH            {R4-R7,LR}
BDCBA:  ADD             R7, SP, #0xC
BDCBC:  PUSH.W          {R8-R11}
BDCC0:  SUB             SP, SP, #0x14
BDCC2:  STR             R3, [SP,#0x30+var_20]
BDCC4:  MOV             R5, R2
BDCC6:  LDR             R4, [R0,#0x18]
BDCC8:  MOV             R6, R1
BDCCA:  STR             R0, [SP,#0x30+var_24]
BDCCC:  MOV.W           R11, #0
BDCD0:  LDR.W           R10, [R7,#arg_8]
BDCD4:  LDR             R0, [R0,#0x24]
BDCD6:  MUL.W           R0, R0, R10
BDCDA:  LSLS            R1, R0, #2
BDCDC:  LSLS            R0, R0, #1
BDCDE:  STR             R1, [SP,#0x30+var_28]
BDCE0:  STR             R0, [SP,#0x30+var_2C]
BDCE2:  MOV.W           R8, #0
BDCE6:  LDR             R0, [SP,#0x30+var_24]
BDCE8:  LDR             R1, [SP,#0x30+var_20]
BDCEA:  LDR             R0, [R0,#8]
BDCEC:  MLA.W           R0, R0, R11, R8
BDCF0:  LDR.W           R0, [R1,R0,LSL#2]
BDCF4:  CMP             R0, #1
BDCF6:  ITTE GE
BDCF8:  CLZGE.W         R1, R0
BDCFC:  RSBGE.W         R9, R1, #0x1F
BDD00:  MOVLT.W         R9, #0
BDD04:  RSB.W           R2, R9, #0xD
BDD08:  SUBS.W          R1, R9, #0xD
BDD0C:  LSL.W           R2, R0, R2
BDD10:  IT GT
BDD12:  ASRGT.W         R2, R0, R1
BDD16:  LSLS            R0, R2, #0x10
BDD18:  ASRS            R0, R0, #0xD
BDD1A:  BLX             j_celt_rcp
BDD1E:  LDRSH.W         R1, [R4,R8,LSL#1]
BDD22:  ADD.W           R8, R8, #1
BDD26:  SXTH            R0, R0
BDD28:  CMP.W           R9, #0xE
BDD2C:  MUL.W           R1, R1, R10
BDD30:  BLE             loc_BDD58
BDD32:  SUB.W           R2, R9, #0xE
BDD36:  LDR.W           R3, [R6,R1,LSL#2]
BDD3A:  ASRS            R3, R2
BDD3C:  SXTH            R3, R3
BDD3E:  SMULBB.W        R3, R3, R0
BDD42:  LSRS            R3, R3, #0xF
BDD44:  STRH.W          R3, [R5,R1,LSL#1]
BDD48:  ADDS            R1, #1
BDD4A:  LDRSH.W         R3, [R4,R8,LSL#1]
BDD4E:  MUL.W           R3, R3, R10
BDD52:  CMP             R1, R3
BDD54:  BLT             loc_BDD36
BDD56:  B               loc_BDD7C
BDD58:  RSB.W           R2, R9, #0xE
BDD5C:  LDR.W           R3, [R6,R1,LSL#2]
BDD60:  LSLS            R3, R2
BDD62:  SXTH            R3, R3
BDD64:  SMULBB.W        R3, R3, R0
BDD68:  LSRS            R3, R3, #0xF
BDD6A:  STRH.W          R3, [R5,R1,LSL#1]
BDD6E:  ADDS            R1, #1
BDD70:  LDRSH.W         R3, [R4,R8,LSL#1]
BDD74:  MUL.W           R3, R3, R10
BDD78:  CMP             R1, R3
BDD7A:  BLT             loc_BDD5C
BDD7C:  LDR             R0, [R7,#arg_0]
BDD7E:  CMP             R8, R0
BDD80:  BLT             loc_BDCE6
BDD82:  LDR             R0, [SP,#0x30+var_28]
BDD84:  ADD.W           R11, R11, #1
BDD88:  ADD             R6, R0
BDD8A:  LDR             R0, [SP,#0x30+var_2C]
BDD8C:  ADD             R5, R0
BDD8E:  LDR             R0, [R7,#arg_4]
BDD90:  CMP             R11, R0
BDD92:  BLT             loc_BDCE2
BDD94:  ADD             SP, SP, #0x14
BDD96:  POP.W           {R8-R11}
BDD9A:  POP             {R4-R7,PC}
