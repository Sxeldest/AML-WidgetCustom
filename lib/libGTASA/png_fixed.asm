; =========================================================
; Game Engine Function: png_fixed
; Address            : 0x1F0E18 - 0x1F0E6C
; =========================================================

1F0E18:  PUSH            {R4,R6,R7,LR}
1F0E1A:  ADD             R7, SP, #8
1F0E1C:  VLDR            D16, =100000.0
1F0E20:  VMOV            D17, R2, R3
1F0E24:  MOV             R4, R0
1F0E26:  VMUL.F64        D16, D17, D16
1F0E2A:  VMOV.F64        D17, #0.5
1F0E2E:  VADD.F64        D16, D16, D17
1F0E32:  VMOV            R0, R1, D16; x
1F0E36:  BLX             floor
1F0E3A:  VLDR            D17, =2.14748365e9
1F0E3E:  VMOV            D16, R0, R1
1F0E42:  VCMPE.F64       D16, D17
1F0E46:  VMRS            APSR_nzcv, FPSCR
1F0E4A:  BGT             loc_1F0E64
1F0E4C:  VLDR            D17, =-2.14748365e9
1F0E50:  VCMPE.F64       D16, D17
1F0E54:  VMRS            APSR_nzcv, FPSCR
1F0E58:  ITTT GE
1F0E5A:  VCVTGE.S32.F64  S0, D16
1F0E5E:  VMOVGE          R0, S0
1F0E62:  POPGE           {R4,R6,R7,PC}
1F0E64:  LDR             R1, [R7,#arg_0]
1F0E66:  MOV             R0, R4
1F0E68:  BLX             j_png_fixed_error
