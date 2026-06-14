; =========================================================
; Game Engine Function: _Z14findDataStringPKcS0_i
; Address            : 0x279EF4 - 0x279F92
; =========================================================

279EF4:  PUSH            {R4-R7,LR}
279EF6:  ADD             R7, SP, #0xC
279EF8:  PUSH.W          {R8-R11}
279EFC:  SUB             SP, SP, #0xC
279EFE:  MOV             R5, R1
279F00:  MOV             R6, R0
279F02:  MOV             R0, R5; char *
279F04:  MOV             R8, R2
279F06:  BLX             strlen
279F0A:  MOV             R4, R0
279F0C:  CMP             R4, R8
279F0E:  BGT             loc_279F88
279F10:  LDR             R0, =(separators_ptr - 0x279F1A)
279F12:  STRD.W          R8, R5, [SP,#0x28+var_28]
279F16:  ADD             R0, PC; separators_ptr
279F18:  LDR             R0, [R0]; " \t\n\r" ...
279F1A:  LDRB.W          R10, [R0]; " \t\n\r"
279F1E:  LDRB.W          R11, [R0,#(separators+1 - 0x685618)]; "\t\n\r"
279F22:  LDRB            R5, [R0,#(separators+2 - 0x685618)]; "\n\r"
279F24:  LDRB.W          R8, [R0,#(separators+3 - 0x685618)]; "\r"
279F28:  LDRB.W          R9, [R0,#(separators+4 - 0x685618)]; ""
279F2C:  LDRB            R1, [R0,#(byte_68561D - 0x685618)]
279F2E:  STR             R1, [SP,#0x28+var_20]
279F30:  MOV             R1, R6
279F32:  MOV             R0, R1; haystack
279F34:  LDR             R1, [SP,#0x28+needle]; needle
279F36:  BLX             strstr
279F3A:  CBZ             R0, loc_279F88
279F3C:  CMP             R0, R6
279F3E:  ITT NE
279F40:  LDRBNE.W        R1, [R0,#-1]
279F44:  CMPNE           R10, R1
279F46:  BEQ             loc_279F5E
279F48:  CMP             R11, R1
279F4A:  IT NE
279F4C:  CMPNE           R5, R1
279F4E:  BEQ             loc_279F5E
279F50:  CMP             R8, R1
279F52:  IT NE
279F54:  CMPNE           R9, R1
279F56:  BEQ             loc_279F5E
279F58:  LDR             R2, [SP,#0x28+var_20]
279F5A:  CMP             R2, R1
279F5C:  BNE             loc_279F7A
279F5E:  LDRB            R1, [R0,R4]
279F60:  CMP             R10, R1
279F62:  IT NE
279F64:  CMPNE           R11, R1
279F66:  BEQ             loc_279F8A
279F68:  CMP             R5, R1
279F6A:  IT NE
279F6C:  CMPNE           R8, R1
279F6E:  BEQ             loc_279F8A
279F70:  CMP             R9, R1
279F72:  ITT NE
279F74:  LDRNE           R2, [SP,#0x28+var_20]
279F76:  CMPNE           R2, R1
279F78:  BEQ             loc_279F8A
279F7A:  ADDS            R1, R0, R4
279F7C:  LDR             R3, [SP,#0x28+var_28]
279F7E:  SUBS            R2, R1, R6
279F80:  ADD             R2, R4
279F82:  CMP             R2, R3
279F84:  BLE             loc_279F32
279F86:  B               loc_279F8A
279F88:  MOVS            R0, #0
279F8A:  ADD             SP, SP, #0xC
279F8C:  POP.W           {R8-R11}
279F90:  POP             {R4-R7,PC}
