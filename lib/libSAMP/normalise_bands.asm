; =========================================================
; Game Engine Function: normalise_bands
; Address            : 0x19BA78 - 0x19BB5C
; =========================================================

19BA78:  PUSH            {R4-R7,LR}
19BA7A:  ADD             R7, SP, #0xC
19BA7C:  PUSH.W          {R8-R11}
19BA80:  SUB             SP, SP, #0x14
19BA82:  STR             R3, [SP,#0x30+var_20]
19BA84:  MOV             R5, R2
19BA86:  LDR             R4, [R0,#0x18]
19BA88:  MOV             R6, R1
19BA8A:  STR             R0, [SP,#0x30+var_24]
19BA8C:  MOV.W           R11, #0
19BA90:  LDR.W           R10, [R7,#arg_8]
19BA94:  LDR             R0, [R0,#0x24]
19BA96:  MUL.W           R0, R0, R10
19BA9A:  LSLS            R1, R0, #2
19BA9C:  LSLS            R0, R0, #1
19BA9E:  STR             R1, [SP,#0x30+var_28]
19BAA0:  STR             R0, [SP,#0x30+var_2C]
19BAA2:  MOV.W           R8, #0
19BAA6:  LDR             R0, [SP,#0x30+var_24]
19BAA8:  LDR             R1, [SP,#0x30+var_20]
19BAAA:  LDR             R0, [R0,#8]
19BAAC:  MLA.W           R0, R0, R11, R8
19BAB0:  LDR.W           R0, [R1,R0,LSL#2]
19BAB4:  CMP             R0, #1
19BAB6:  ITTE GE
19BAB8:  CLZGE.W         R1, R0
19BABC:  RSBGE.W         R9, R1, #0x1F
19BAC0:  MOVLT.W         R9, #0
19BAC4:  RSB.W           R2, R9, #0xD
19BAC8:  SUBS.W          R1, R9, #0xD
19BACC:  LSL.W           R2, R0, R2
19BAD0:  IT GT
19BAD2:  ASRGT.W         R2, R0, R1
19BAD6:  LSLS            R0, R2, #0x10
19BAD8:  ASRS            R0, R0, #0xD
19BADA:  BLX             j_celt_rcp
19BADE:  LDRSH.W         R1, [R4,R8,LSL#1]
19BAE2:  ADD.W           R8, R8, #1
19BAE6:  SXTH            R0, R0
19BAE8:  CMP.W           R9, #0xE
19BAEC:  MUL.W           R1, R1, R10
19BAF0:  BLE             loc_19BB18
19BAF2:  SUB.W           R2, R9, #0xE
19BAF6:  LDR.W           R3, [R6,R1,LSL#2]
19BAFA:  ASRS            R3, R2
19BAFC:  SXTH            R3, R3
19BAFE:  SMULBB.W        R3, R3, R0
19BB02:  LSRS            R3, R3, #0xF
19BB04:  STRH.W          R3, [R5,R1,LSL#1]
19BB08:  ADDS            R1, #1
19BB0A:  LDRSH.W         R3, [R4,R8,LSL#1]
19BB0E:  MUL.W           R3, R3, R10
19BB12:  CMP             R1, R3
19BB14:  BLT             loc_19BAF6
19BB16:  B               loc_19BB3C
19BB18:  RSB.W           R2, R9, #0xE
19BB1C:  LDR.W           R3, [R6,R1,LSL#2]
19BB20:  LSLS            R3, R2
19BB22:  SXTH            R3, R3
19BB24:  SMULBB.W        R3, R3, R0
19BB28:  LSRS            R3, R3, #0xF
19BB2A:  STRH.W          R3, [R5,R1,LSL#1]
19BB2E:  ADDS            R1, #1
19BB30:  LDRSH.W         R3, [R4,R8,LSL#1]
19BB34:  MUL.W           R3, R3, R10
19BB38:  CMP             R1, R3
19BB3A:  BLT             loc_19BB1C
19BB3C:  LDR             R0, [R7,#arg_0]
19BB3E:  CMP             R8, R0
19BB40:  BLT             loc_19BAA6
19BB42:  LDR             R0, [SP,#0x30+var_28]
19BB44:  ADD.W           R11, R11, #1
19BB48:  ADD             R6, R0
19BB4A:  LDR             R0, [SP,#0x30+var_2C]
19BB4C:  ADD             R5, R0
19BB4E:  LDR             R0, [R7,#arg_4]
19BB50:  CMP             R11, R0
19BB52:  BLT             loc_19BAA2
19BB54:  ADD             SP, SP, #0x14
19BB56:  POP.W           {R8-R11}
19BB5A:  POP             {R4-R7,PC}
