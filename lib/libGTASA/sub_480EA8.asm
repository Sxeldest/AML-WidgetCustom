; =========================================================
; Game Engine Function: sub_480EA8
; Address            : 0x480EA8 - 0x480FC4
; =========================================================

480EA8:  PUSH            {R4-R7,LR}
480EAA:  ADD             R7, SP, #0xC
480EAC:  PUSH.W          {R8-R11}
480EB0:  SUB             SP, SP, #0xC
480EB2:  MOV             R5, R0
480EB4:  MOVW            R11, #0xC9F0
480EB8:  LDR.W           R9, [R5,#4]
480EBC:  MOV             R10, R2
480EBE:  MOVT            R11, #0x3B9A
480EC2:  MOV             R6, R1
480EC4:  CMP             R10, R11
480EC6:  BLS             loc_480EDC
480EC8:  LDR             R0, [R5]
480ECA:  MOVS            R1, #0x36 ; '6'
480ECC:  STR             R1, [R0,#0x14]
480ECE:  MOVS            R1, #1
480ED0:  LDR             R0, [R5]
480ED2:  STR             R1, [R0,#0x18]
480ED4:  LDR             R0, [R5]
480ED6:  LDR             R1, [R0]
480ED8:  MOV             R0, R5
480EDA:  BLX             R1
480EDC:  ANDS.W          R0, R10, #7
480EE0:  RSB.W           R0, R0, #8
480EE4:  IT NE
480EE6:  ADDNE           R10, R0
480EE8:  CMP             R6, #2
480EEA:  BCC             loc_480EFE
480EEC:  LDR             R0, [R5]
480EEE:  MOVS            R1, #0xE
480EF0:  STR             R1, [R0,#0x14]
480EF2:  LDR             R0, [R5]
480EF4:  STR             R6, [R0,#0x18]
480EF6:  LDR             R0, [R5]
480EF8:  LDR             R1, [R0]
480EFA:  MOV             R0, R5
480EFC:  BLX             R1
480EFE:  ADD.W           R1, R9, R6,LSL#2
480F02:  LDR.W           R0, [R1,#0x34]!
480F06:  CMP             R0, #0
480F08:  BEQ             loc_480F1A
480F0A:  MOV             R4, R0
480F0C:  LDR             R0, [R4,#8]
480F0E:  CMP             R0, R10
480F10:  BCS             loc_480FA6
480F12:  LDR             R0, [R4]
480F14:  CMP             R0, #0
480F16:  BNE             loc_480F0A
480F18:  B               loc_480F1C
480F1A:  MOVS            R4, #0
480F1C:  ADR             R0, dword_480FC4
480F1E:  STR             R1, [SP,#0x28+var_20]
480F20:  ADR             R1, dword_480FCC
480F22:  CMP             R4, #0
480F24:  IT NE
480F26:  MOVNE           R1, R0
480F28:  SUB.W           R0, R11, R10
480F2C:  LDR.W           R8, [R1,R6,LSL#2]
480F30:  ADD.W           R11, R10, #0x10
480F34:  CMP             R8, R0
480F36:  IT HI
480F38:  MOVHI           R8, R0
480F3A:  MOV             R0, R5; int
480F3C:  ADD.W           R6, R11, R8
480F40:  MOV             R1, R6; byte_count
480F42:  BLX             j__Z14jpeg_get_smallP18jpeg_common_structj; jpeg_get_small(jpeg_common_struct *,uint)
480F46:  CBNZ            R0, loc_480F82
480F48:  STR.W           R9, [SP,#0x28+var_24]
480F4C:  MOV.W           R9, R8,LSR#1
480F50:  CMP.W           R8, #0x63 ; 'c'
480F54:  BHI             loc_480F6A
480F56:  LDR             R0, [R5]
480F58:  MOVS            R1, #0x36 ; '6'
480F5A:  STR             R1, [R0,#0x14]
480F5C:  MOVS            R1, #2
480F5E:  LDR             R0, [R5]
480F60:  STR             R1, [R0,#0x18]
480F62:  LDR             R0, [R5]
480F64:  LDR             R1, [R0]
480F66:  MOV             R0, R5
480F68:  BLX             R1
480F6A:  ADD.W           R6, R11, R9
480F6E:  MOV             R0, R5; int
480F70:  MOV             R1, R6; byte_count
480F72:  BLX             j__Z14jpeg_get_smallP18jpeg_common_structj; jpeg_get_small(jpeg_common_struct *,uint)
480F76:  CMP             R0, #0
480F78:  MOV             R8, R9
480F7A:  BEQ             loc_480F4C
480F7C:  MOV             R8, R9
480F7E:  LDR.W           R9, [SP,#0x28+var_24]
480F82:  LDR.W           R1, [R9,#0x4C]
480F86:  ADD.W           R2, R8, R10
480F8A:  CMP             R4, #0
480F8C:  ADD             R1, R6
480F8E:  STR.W           R1, [R9,#0x4C]
480F92:  MOV.W           R1, #0
480F96:  STRD.W          R1, R1, [R0]
480F9A:  STR             R2, [R0,#8]
480F9C:  ITEE NE
480F9E:  STRNE           R0, [R4]
480FA0:  LDREQ           R1, [SP,#0x28+var_20]
480FA2:  STREQ           R0, [R1]
480FA4:  B               loc_480FA8
480FA6:  MOV             R0, R4
480FA8:  LDRD.W          R1, R2, [R0,#4]
480FAC:  SUB.W           R2, R2, R10
480FB0:  ADD.W           R3, R1, R10
480FB4:  STRD.W          R3, R2, [R0,#4]
480FB8:  ADD             R0, R1
480FBA:  ADDS            R0, #0x10
480FBC:  ADD             SP, SP, #0xC
480FBE:  POP.W           {R8-R11}
480FC2:  POP             {R4-R7,PC}
