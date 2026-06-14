; =========================================================
; Game Engine Function: png_icc_check_tag_table
; Address            : 0x1EFDD0 - 0x1EFE56
; =========================================================

1EFDD0:  PUSH            {R4-R7,LR}
1EFDD2:  ADD             R7, SP, #0xC
1EFDD4:  PUSH.W          {R8-R11}
1EFDD8:  SUB             SP, SP, #0xC
1EFDDA:  MOV             R10, R0
1EFDDC:  LDR             R0, [R7,#arg_0]
1EFDDE:  MOV             R9, R2
1EFDE0:  MOV             R8, R3
1EFDE2:  LDR.W           R2, [R0,#0x80]
1EFDE6:  REV.W           R11, R2
1EFDEA:  CMP.W           R11, #0
1EFDEE:  BEQ             loc_1EFE3A
1EFDF0:  ADD.W           R6, R0, #0x84
1EFDF4:  MOVS            R4, #0
1EFDF6:  STR             R1, [SP,#0x28+var_20]
1EFDF8:  LDRB            R1, [R6,#5]
1EFDFA:  LDRB            R2, [R6,#4]
1EFDFC:  LDRB            R3, [R6,#6]
1EFDFE:  LSLS            R1, R1, #0x10
1EFE00:  LDRB            R0, [R6,#7]
1EFE02:  ORR.W           R1, R1, R2,LSL#24
1EFE06:  LDR             R5, [R6]
1EFE08:  ORR.W           R1, R1, R3,LSL#8
1EFE0C:  ORRS            R1, R0
1EFE0E:  REV             R3, R5
1EFE10:  CMP             R1, R8
1EFE12:  ITTTT LS
1EFE14:  LDRLS           R2, [R6,#8]
1EFE16:  SUBLS.W         R1, R8, R1
1EFE1A:  REVLS           R2, R2
1EFE1C:  CMPLS           R2, R1
1EFE1E:  BHI             loc_1EFE3E
1EFE20:  LSLS            R0, R0, #0x1E
1EFE22:  BEQ             loc_1EFE32
1EFE24:  ADR             R0, aIccProfileTagS; "ICC profile tag start not a multiple of"...
1EFE26:  STR             R0, [SP,#0x28+var_28]
1EFE28:  MOV             R0, R10
1EFE2A:  MOVS            R1, #0
1EFE2C:  MOV             R2, R9
1EFE2E:  BL              sub_1EF844
1EFE32:  ADDS            R4, #1
1EFE34:  ADDS            R6, #0xC
1EFE36:  CMP             R4, R11
1EFE38:  BCC             loc_1EFDF8
1EFE3A:  MOVS            R0, #1
1EFE3C:  B               loc_1EFE4E
1EFE3E:  LDR             R1, [SP,#0x28+var_20]
1EFE40:  ADR             R0, aIccProfileTagO; "ICC profile tag outside profile"
1EFE42:  STR             R0, [SP,#0x28+var_28]
1EFE44:  MOV             R0, R10
1EFE46:  MOV             R2, R9
1EFE48:  BL              sub_1EF844
1EFE4C:  MOVS            R0, #0
1EFE4E:  ADD             SP, SP, #0xC
1EFE50:  POP.W           {R8-R11}
1EFE54:  POP             {R4-R7,PC}
