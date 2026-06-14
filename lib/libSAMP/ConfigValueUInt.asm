; =========================================================
; Game Engine Function: ConfigValueUInt
; Address            : 0x1D8CD0 - 0x1D8D14
; =========================================================

1D8CD0:  PUSH            {R4,R10,R11,LR}
1D8CD4:  ADD             R11, SP, #8
1D8CD8:  MOV             R4, R2
1D8CDC:  LDR             R2, =(byte_8F794 - 0x1D8CE8)
1D8CE0:  ADD             R2, PC, R2; byte_8F794
1D8CE4:  BL              j_GetConfigValue
1D8CE8:  LDRB            R1, [R0]
1D8CEC:  CMP             R1, #0
1D8CF0:  BEQ             loc_1D8D0C
1D8CF4:  MOV             R1, #0; endptr
1D8CF8:  MOV             R2, #0; base
1D8CFC:  BL              strtoul
1D8D00:  STR             R0, [R4]
1D8D04:  MOV             R0, #1
1D8D08:  POP             {R4,R10,R11,PC}
1D8D0C:  MOV             R0, #0
1D8D10:  POP             {R4,R10,R11,PC}
