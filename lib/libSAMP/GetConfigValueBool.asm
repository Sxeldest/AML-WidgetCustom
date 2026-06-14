; =========================================================
; Game Engine Function: GetConfigValueBool
; Address            : 0x1D8DBC - 0x1D8E40
; =========================================================

1D8DBC:  PUSH            {R4,R5,R11,LR}
1D8DC0:  ADD             R11, SP, #8
1D8DC4:  MOV             R4, R2
1D8DC8:  LDR             R2, =(byte_8F794 - 0x1D8DD4)
1D8DCC:  ADD             R2, PC, R2; byte_8F794
1D8DD0:  BL              j_GetConfigValue
1D8DD4:  MOV             R5, R0
1D8DD8:  LDRB            R0, [R5]
1D8DDC:  CMP             R0, #0
1D8DE0:  BEQ             loc_1D8E30
1D8DE4:  ADR             R1, aTrue; "true"
1D8DE8:  MOV             R0, R5; s1
1D8DEC:  BL              strcasecmp
1D8DF0:  MOV             R4, #1
1D8DF4:  CMP             R0, #0
1D8DF8:  BEQ             loc_1D8E38
1D8DFC:  ADR             R1, aYes; "yes"
1D8E00:  MOV             R0, R5; s1
1D8E04:  BL              strcasecmp
1D8E08:  CMP             R0, #0
1D8E0C:  BEQ             loc_1D8E38
1D8E10:  ADR             R1, aOn; "on"
1D8E14:  MOV             R0, R5; s1
1D8E18:  BL              strcasecmp
1D8E1C:  CMP             R0, #0
1D8E20:  BEQ             loc_1D8E38
1D8E24:  MOV             R0, R5; nptr
1D8E28:  BL              atoi
1D8E2C:  MOV             R4, R0
1D8E30:  CMP             R4, #0
1D8E34:  MOVWNE          R4, #1
1D8E38:  MOV             R0, R4
1D8E3C:  POP             {R4,R5,R11,PC}
