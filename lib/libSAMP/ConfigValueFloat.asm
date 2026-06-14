; =========================================================
; Game Engine Function: ConfigValueFloat
; Address            : 0x1D8D18 - 0x1D8DA0
; =========================================================

1D8D18:  PUSH            {R4,R10,R11,LR}
1D8D1C:  ADD             R11, SP, #8
1D8D20:  MOV             R4, R2
1D8D24:  LDR             R2, =(byte_8F794 - 0x1D8D30)
1D8D28:  ADD             R2, PC, R2; byte_8F794
1D8D2C:  BL              j_GetConfigValue
1D8D30:  LDRB            R1, [R0]
1D8D34:  CMP             R1, #0
1D8D38:  BEQ             loc_1D8D64
1D8D3C:  MOV             R1, #0; endptr
1D8D40:  BL              strtod
1D8D44:  VLDR            D1, =3.40282347e38
1D8D48:  VMOV            D0, R0, R1
1D8D4C:  VCMPE.F64       D0, D1
1D8D50:  VMRS            APSR_nzcv, FPSCR
1D8D54:  BLE             loc_1D8D6C
1D8D58:  BL              __errno
1D8D5C:  VLDR            S0, =+Inf
1D8D60:  B               loc_1D8D84
1D8D64:  MOV             R0, #0
1D8D68:  POP             {R4,R10,R11,PC}
1D8D6C:  VLDR            D1, =-3.40282347e38
1D8D70:  VCMPE.F64       D0, D1
1D8D74:  VMRS            APSR_nzcv, FPSCR
1D8D78:  BGE             loc_1D8D90
1D8D7C:  BL              __errno
1D8D80:  VLDR            S0, =-Inf
1D8D84:  MOV             R1, #0x22 ; '"'
1D8D88:  STR             R1, [R0]
1D8D8C:  B               loc_1D8D94
1D8D90:  VCVT.F32.F64    S0, D0
1D8D94:  MOV             R0, #1
1D8D98:  VSTR            S0, [R4]
1D8D9C:  POP             {R4,R10,R11,PC}
