; =========================================================
; Game Engine Function: GetConfigValue
; Address            : 0x250C8C - 0x250D78
; =========================================================

250C8C:  PUSH            {R4-R7,LR}
250C8E:  ADD             R7, SP, #0xC
250C90:  PUSH.W          {R8-R11}
250C94:  SUB             SP, SP, #0x14
250C96:  MOV             R6, R1
250C98:  MOV             R4, R2
250C9A:  CMP             R6, #0
250C9C:  BEQ             loc_250D6E
250C9E:  LDR             R1, =(dword_6D6410 - 0x250CA8)
250CA0:  CMP             R0, #0
250CA2:  LDR             R2, =(aGeneral - 0x250CAC); "general"
250CA4:  ADD             R1, PC; dword_6D6410
250CA6:  STR             R4, [SP,#0x30+var_28]
250CA8:  ADD             R2, PC; "general"
250CAA:  LDR             R1, [R1]
250CAC:  IT NE
250CAE:  MOVNE           R2, R0
250CB0:  STR             R2, [SP,#0x30+var_20]
250CB2:  CMP             R1, #0
250CB4:  MOV             R0, R1
250CB6:  STR             R0, [SP,#0x30+var_24]
250CB8:  BEQ             loc_250D0C
250CBA:  LDR             R0, =(dword_6D640C - 0x250CC4)
250CBC:  MOV.W           R8, #0
250CC0:  ADD             R0, PC; dword_6D640C
250CC2:  LDR.W           R11, [R0]
250CC6:  B               loc_250CF0
250CC8:  ADD.W           R0, R11, R4,LSL#2
250CCC:  LDR.W           R10, [R0,#8]
250CD0:  CMP.W           R10, #0
250CD4:  BEQ             loc_250D02
250CD6:  LDR.W           R9, [R0,#4]
250CDA:  MOVS            R5, #0
250CDC:  LDR.W           R0, [R9,R5,LSL#3]; char *
250CE0:  MOV             R1, R6; char *
250CE2:  BLX             strcasecmp
250CE6:  CBZ             R0, loc_250D2C
250CE8:  ADDS            R5, #1
250CEA:  CMP             R5, R10
250CEC:  BCC             loc_250CDC
250CEE:  B               loc_250D02
250CF0:  ADD.W           R4, R8, R8,LSL#1
250CF4:  LDR             R1, [SP,#0x30+var_20]; char *
250CF6:  LDR.W           R0, [R11,R4,LSL#2]; char *
250CFA:  BLX             strcasecmp
250CFE:  CMP             R0, #0
250D00:  BEQ             loc_250CC8
250D02:  LDR             R0, [SP,#0x30+var_24]
250D04:  ADD.W           R8, R8, #1
250D08:  CMP             R8, R0
250D0A:  BCC             loc_250CF0
250D0C:  LDR             R0, =(LogLevel_ptr - 0x250D14)
250D0E:  LDR             R4, [SP,#0x30+var_28]
250D10:  ADD             R0, PC; LogLevel_ptr
250D12:  LDR             R0, [R0]; LogLevel
250D14:  LDR             R0, [R0]
250D16:  CMP             R0, #3
250D18:  BCC             loc_250D6E
250D1A:  LDR             R0, =(aIi - 0x250D26); "(II)"
250D1C:  ADR             R1, aGetconfigvalue; "GetConfigValue"
250D1E:  LDR             R3, [SP,#0x30+var_20]
250D20:  ADR             R2, aKeySSNotFound; "Key %s:%s not found\n"
250D22:  ADD             R0, PC; "(II)"
250D24:  STR             R6, [SP,#0x30+var_30]
250D26:  BLX             j_al_print
250D2A:  B               loc_250D6E
250D2C:  LDR             R0, =(LogLevel_ptr - 0x250D32)
250D2E:  ADD             R0, PC; LogLevel_ptr
250D30:  LDR             R0, [R0]; LogLevel
250D32:  LDR             R0, [R0]
250D34:  CMP             R0, #3
250D36:  BCC             loc_250D5E
250D38:  ADD.W           R0, R9, R5,LSL#3
250D3C:  ADR             R2, aFoundSSS; "Found %s:%s = \"%s\"\n"
250D3E:  LDR             R1, [R0,#4]
250D40:  LDR             R0, =(aIi - 0x250D4A); "(II)"
250D42:  STRD.W          R6, R1, [SP,#0x30+var_30]
250D46:  ADD             R0, PC; "(II)"
250D48:  LDR             R3, [SP,#0x30+var_20]
250D4A:  ADR             R1, aGetconfigvalue; "GetConfigValue"
250D4C:  BLX             j_al_print
250D50:  LDR             R0, =(dword_6D640C - 0x250D56)
250D52:  ADD             R0, PC; dword_6D640C
250D54:  LDR             R0, [R0]
250D56:  ADD.W           R0, R0, R4,LSL#2
250D5A:  LDR.W           R9, [R0,#4]
250D5E:  ADD.W           R0, R9, R5,LSL#3
250D62:  LDR             R4, [SP,#0x30+var_28]
250D64:  LDR             R0, [R0,#4]
250D66:  LDRB            R1, [R0]
250D68:  CMP             R1, #0
250D6A:  IT NE
250D6C:  MOVNE           R4, R0
250D6E:  MOV             R0, R4
250D70:  ADD             SP, SP, #0x14
250D72:  POP.W           {R8-R11}
250D76:  POP             {R4-R7,PC}
