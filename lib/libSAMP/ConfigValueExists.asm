; =========================================================
; Game Engine Function: ConfigValueExists
; Address            : 0x1D8C2C - 0x1D8C50
; =========================================================

1D8C2C:  PUSH            {R11,LR}
1D8C30:  MOV             R11, SP
1D8C34:  LDR             R2, =(byte_8F794 - 0x1D8C40)
1D8C38:  ADD             R2, PC, R2; byte_8F794
1D8C3C:  BL              j_GetConfigValue
1D8C40:  LDRB            R0, [R0]
1D8C44:  CMP             R0, #0
1D8C48:  MOVWNE          R0, #1
1D8C4C:  POP             {R11,PC}
