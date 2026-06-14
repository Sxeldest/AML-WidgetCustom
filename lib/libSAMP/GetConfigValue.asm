; =========================================================
; Game Engine Function: GetConfigValue
; Address            : 0x1D8A78 - 0x1D8BD8
; =========================================================

1D8A78:  PUSH            {R4-R11,LR}
1D8A7C:  ADD             R11, SP, #0x1C
1D8A80:  SUB             SP, SP, #0x14
1D8A84:  MOV             R4, R2
1D8A88:  MOV             R5, R1
1D8A8C:  MOV             R2, R0
1D8A90:  CMP             R5, #0
1D8A94:  BEQ             loc_1D8BCC
1D8A98:  LDR             R0, =(dword_382934 - 0x1D8AB0)
1D8A9C:  CMP             R2, #0
1D8AA0:  LDR             R1, =(aGeneral - 0x1D8AB4); "general" ...
1D8AA4:  STR             R4, [SP,#0x30+var_28]
1D8AA8:  LDR             R0, [PC,R0]; dword_382934
1D8AAC:  ADDEQ           R2, PC, R1; "general"
1D8AB0:  STR             R0, [SP,#0x30+var_24]
1D8AB4:  CMP             R0, #0
1D8AB8:  BEQ             loc_1D8B44
1D8ABC:  LDR             R0, =(dword_382930 - 0x1D8ACC)
1D8AC0:  MOV             R8, #0
1D8AC4:  LDR             R0, [PC,R0]; dword_382930
1D8AC8:  STR             R0, [SP,#0x30+var_20]
1D8ACC:  B               loc_1D8B10
1D8AD0:  LDR             R0, [SP,#0x30+var_20]
1D8AD4:  ADD             R0, R0, R7,LSL#2
1D8AD8:  LDR             R10, [R0,#8]
1D8ADC:  CMP             R10, #0
1D8AE0:  BEQ             loc_1D8B30
1D8AE4:  LDR             R9, [R0,#4]
1D8AE8:  MOV             R4, #0
1D8AEC:  LDR             R0, [R9,R4,LSL#3]; s1
1D8AF0:  MOV             R1, R5; s2
1D8AF4:  BL              strcasecmp
1D8AF8:  CMP             R0, #0
1D8AFC:  BEQ             loc_1D8B70
1D8B00:  ADD             R4, R4, #1
1D8B04:  CMP             R4, R10
1D8B08:  BCC             loc_1D8AEC
1D8B0C:  B               loc_1D8B30
1D8B10:  LDR             R0, [SP,#0x30+var_20]
1D8B14:  ADD             R7, R8, R8,LSL#1
1D8B18:  MOV             R1, R2; s2
1D8B1C:  MOV             R6, R2
1D8B20:  LDR             R0, [R0,R7,LSL#2]; s1
1D8B24:  BL              strcasecmp
1D8B28:  CMP             R0, #0
1D8B2C:  BEQ             loc_1D8AD0
1D8B30:  LDR             R0, [SP,#0x30+var_24]
1D8B34:  ADD             R8, R8, #1
1D8B38:  MOV             R2, R6
1D8B3C:  CMP             R8, R0
1D8B40:  BCC             loc_1D8B10
1D8B44:  LDR             R0, =(LogLevel_ptr - 0x1D8B54)
1D8B48:  LDR             R4, [SP,#0x30+var_28]
1D8B4C:  LDR             R0, [PC,R0]; LogLevel
1D8B50:  LDR             R0, [R0]
1D8B54:  CMP             R0, #3
1D8B58:  BCC             loc_1D8BCC
1D8B5C:  ADR             R0, aGetconfigvalue_1; "GetConfigValue"
1D8B60:  ADR             R1, aKeySSNotFound; "Key %s:%s not found\n"
1D8B64:  MOV             R3, R5
1D8B68:  BL              j_al_print
1D8B6C:  B               loc_1D8BCC
1D8B70:  LDR             R0, =(LogLevel_ptr - 0x1D8B7C)
1D8B74:  LDR             R0, [PC,R0]; LogLevel
1D8B78:  LDR             R0, [R0]
1D8B7C:  CMP             R0, #3
1D8B80:  BCC             loc_1D8BB4
1D8B84:  ADD             R0, R9, R4,LSL#3
1D8B88:  MOV             R2, R6
1D8B8C:  MOV             R3, R5
1D8B90:  LDR             R0, [R0,#4]
1D8B94:  STR             R0, [SP,#0x30+var_30]
1D8B98:  ADR             R0, aGetconfigvalue_1; "GetConfigValue"
1D8B9C:  ADR             R1, aFoundSSS; "Found %s:%s = \"%s\"\n"
1D8BA0:  BL              j_al_print
1D8BA4:  LDR             R0, =(dword_382930 - 0x1D8BB0)
1D8BA8:  LDR             R0, [PC,R0]; dword_382930
1D8BAC:  ADD             R0, R0, R7,LSL#2
1D8BB0:  LDR             R9, [R0,#4]
1D8BB4:  ADD             R0, R9, R4,LSL#3
1D8BB8:  LDR             R4, [SP,#0x30+var_28]
1D8BBC:  LDR             R0, [R0,#4]
1D8BC0:  LDRB            R1, [R0]
1D8BC4:  CMP             R1, #0
1D8BC8:  MOVNE           R4, R0
1D8BCC:  MOV             R0, R4
1D8BD0:  SUB             SP, R11, #0x1C
1D8BD4:  POP             {R4-R11,PC}
