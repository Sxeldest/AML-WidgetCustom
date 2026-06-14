; =========================================================
; Game Engine Function: png_user_version_check
; Address            : 0x1EDAA8 - 0x1EDB6C
; =========================================================

1EDAA8:  PUSH            {R4-R7,LR}
1EDAAA:  ADD             R7, SP, #0xC
1EDAAC:  PUSH.W          {R8}
1EDAB0:  SUB             SP, SP, #0x88
1EDAB2:  MOV             R4, R0
1EDAB4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EDABE)
1EDAB6:  MOV             R5, R1
1EDAB8:  CMP             R5, #0
1EDABA:  ADD             R0, PC; __stack_chk_guard_ptr
1EDABC:  LDR             R0, [R0]; __stack_chk_guard
1EDABE:  LDR             R0, [R0]
1EDAC0:  STR             R0, [SP,#0x98+var_14]
1EDAC2:  BEQ             loc_1EDB00
1EDAC4:  LDR             R1, =(a1634_1 - 0x1EDACE); "1.6.34"
1EDAC6:  MOVS            R0, #0
1EDAC8:  MOVS            R2, #0
1EDACA:  ADD             R1, PC; "1.6.34"
1EDACC:  LDRB            R3, [R5,R0]
1EDACE:  LDRB            R6, [R1,R0]
1EDAD0:  CMP             R3, R6
1EDAD2:  ITTT NE
1EDAD4:  LDRNE.W         R6, [R4,#0x138]
1EDAD8:  ORRNE.W         R6, R6, #0x20000
1EDADC:  STRNE.W         R6, [R4,#0x138]
1EDAE0:  CMP             R3, #0x2E ; '.'
1EDAE2:  IT EQ
1EDAE4:  ADDEQ           R2, #1
1EDAE6:  CMP             R2, #1
1EDAE8:  BGT             loc_1EDAF4
1EDAEA:  CMP             R0, #6
1EDAEC:  ITT NE
1EDAEE:  ADDNE           R0, #1
1EDAF0:  CMPNE           R3, #0
1EDAF2:  BNE             loc_1EDACC
1EDAF4:  LDR.W           R0, [R4,#0x138]
1EDAF8:  LSLS            R0, R0, #0xE
1EDAFA:  BMI             loc_1EDB10
1EDAFC:  MOVS            R6, #1
1EDAFE:  B               loc_1EDB50
1EDB00:  LDR.W           R0, [R4,#0x138]
1EDB04:  ORR.W           R0, R0, #0x20000
1EDB08:  STR.W           R0, [R4,#0x138]
1EDB0C:  LSLS            R0, R0, #0xE
1EDB0E:  BPL             loc_1EDAFC
1EDB10:  ADD.W           R8, SP, #0x98+var_94
1EDB14:  ADR             R3, aApplicationBui; "Application built with libpng-"
1EDB16:  MOVS            R1, #0x80
1EDB18:  MOVS            R2, #0
1EDB1A:  MOV             R0, R8
1EDB1C:  MOVS            R6, #0
1EDB1E:  BLX             j_png_safecat
1EDB22:  MOV             R2, R0
1EDB24:  MOV             R0, R8
1EDB26:  MOVS            R1, #0x80
1EDB28:  MOV             R3, R5
1EDB2A:  BLX             j_png_safecat
1EDB2E:  ADR             R3, aButRunningWith; " but running with "
1EDB30:  MOV             R2, R0
1EDB32:  MOV             R0, R8
1EDB34:  MOVS            R1, #0x80
1EDB36:  BLX             j_png_safecat
1EDB3A:  LDR             R3, =(a1634_1 - 0x1EDB46); "1.6.34"
1EDB3C:  MOV             R2, R0
1EDB3E:  MOV             R0, R8
1EDB40:  MOVS            R1, #0x80
1EDB42:  ADD             R3, PC; "1.6.34"
1EDB44:  BLX             j_png_safecat
1EDB48:  MOV             R0, R4
1EDB4A:  MOV             R1, R8
1EDB4C:  BLX             j_png_warning
1EDB50:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EDB58)
1EDB52:  LDR             R1, [SP,#0x98+var_14]
1EDB54:  ADD             R0, PC; __stack_chk_guard_ptr
1EDB56:  LDR             R0, [R0]; __stack_chk_guard
1EDB58:  LDR             R0, [R0]
1EDB5A:  SUBS            R0, R0, R1
1EDB5C:  ITTTT EQ
1EDB5E:  MOVEQ           R0, R6
1EDB60:  ADDEQ           SP, SP, #0x88
1EDB62:  POPEQ.W         {R8}
1EDB66:  POPEQ           {R4-R7,PC}
1EDB68:  BLX             __stack_chk_fail
