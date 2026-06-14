; =========================================================
; Game Engine Function: ConfigValueInt
; Address            : 0x1D8C88 - 0x1D8CCC
; =========================================================

1D8C88:  PUSH            {R4,R10,R11,LR}
1D8C8C:  ADD             R11, SP, #8
1D8C90:  MOV             R4, R2
1D8C94:  LDR             R2, =(byte_8F794 - 0x1D8CA0)
1D8C98:  ADD             R2, PC, R2; byte_8F794
1D8C9C:  BL              j_GetConfigValue
1D8CA0:  LDRB            R1, [R0]
1D8CA4:  CMP             R1, #0
1D8CA8:  BEQ             loc_1D8CC4
1D8CAC:  MOV             R1, #0; endptr
1D8CB0:  MOV             R2, #0; base
1D8CB4:  BL              strtol
1D8CB8:  STR             R0, [R4]
1D8CBC:  MOV             R0, #1
1D8CC0:  POP             {R4,R10,R11,PC}
1D8CC4:  MOV             R0, #0
1D8CC8:  POP             {R4,R10,R11,PC}
