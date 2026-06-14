; =========================================================
; Game Engine Function: sub_11DF28
; Address            : 0x11DF28 - 0x11DFC8
; =========================================================

11DF28:  PUSH            {R4-R7,LR}
11DF2A:  ADD             R7, SP, #0xC
11DF2C:  PUSH.W          {R11}
11DF30:  SUB             SP, SP, #0x10
11DF32:  CMP             R1, R0
11DF34:  BEQ             loc_11DFC0
11DF36:  MOV             R5, R0
11DF38:  LDR             R0, [R0,#0x10]
11DF3A:  MOV             R4, R1
11DF3C:  CMP             R0, R5
11DF3E:  BEQ             loc_11DF4C
11DF40:  LDR             R1, [R4,#0x10]
11DF42:  CMP             R4, R1
11DF44:  BEQ             loc_11DF68
11DF46:  STR             R1, [R5,#0x10]
11DF48:  STR             R0, [R4,#0x10]
11DF4A:  B               loc_11DFC0
11DF4C:  LDR             R1, [R4,#0x10]
11DF4E:  CMP             R1, R4
11DF50:  BEQ             loc_11DF82
11DF52:  LDR             R1, [R0]
11DF54:  LDR             R2, [R1,#0xC]
11DF56:  MOV             R1, R4
11DF58:  BLX             R2
11DF5A:  LDR             R0, [R5,#0x10]
11DF5C:  LDR             R1, [R0]
11DF5E:  LDR             R1, [R1,#0x10]
11DF60:  BLX             R1
11DF62:  LDR             R0, [R4,#0x10]
11DF64:  STR             R0, [R5,#0x10]
11DF66:  B               loc_11DFBE
11DF68:  LDR             R0, [R1]
11DF6A:  LDR             R2, [R0,#0xC]
11DF6C:  MOV             R0, R1
11DF6E:  MOV             R1, R5
11DF70:  BLX             R2
11DF72:  LDR             R0, [R4,#0x10]
11DF74:  LDR             R1, [R0]
11DF76:  LDR             R1, [R1,#0x10]
11DF78:  BLX             R1
11DF7A:  LDR             R0, [R5,#0x10]
11DF7C:  STR             R0, [R4,#0x10]
11DF7E:  STR             R5, [R5,#0x10]
11DF80:  B               loc_11DFC0
11DF82:  LDR             R1, [R0]
11DF84:  LDR             R2, [R1,#0xC]
11DF86:  MOV             R1, SP
11DF88:  BLX             R2
11DF8A:  LDR             R0, [R5,#0x10]
11DF8C:  LDR             R1, [R0]
11DF8E:  LDR             R1, [R1,#0x10]
11DF90:  BLX             R1
11DF92:  MOVS            R6, #0
11DF94:  STR             R6, [R5,#0x10]
11DF96:  LDR             R0, [R4,#0x10]
11DF98:  LDR             R1, [R0]
11DF9A:  LDR             R2, [R1,#0xC]
11DF9C:  MOV             R1, R5
11DF9E:  BLX             R2
11DFA0:  LDR             R0, [R4,#0x10]
11DFA2:  LDR             R1, [R0]
11DFA4:  LDR             R1, [R1,#0x10]
11DFA6:  BLX             R1
11DFA8:  LDR             R0, [SP,#0x20+var_20]
11DFAA:  STR             R6, [R4,#0x10]
11DFAC:  STR             R5, [R5,#0x10]
11DFAE:  LDR             R2, [R0,#0xC]
11DFB0:  MOV             R0, SP
11DFB2:  MOV             R1, R4
11DFB4:  BLX             R2
11DFB6:  LDR             R0, [SP,#0x20+var_20]
11DFB8:  LDR             R1, [R0,#0x10]
11DFBA:  MOV             R0, SP
11DFBC:  BLX             R1
11DFBE:  STR             R4, [R4,#0x10]
11DFC0:  ADD             SP, SP, #0x10
11DFC2:  POP.W           {R11}
11DFC6:  POP             {R4-R7,PC}
