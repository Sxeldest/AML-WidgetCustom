; =========================================================
; Game Engine Function: _Z19RpLightSetConeAngleP7RpLightf
; Address            : 0x216AA4 - 0x216ADA
; =========================================================

216AA4:  PUSH            {R4,R6,R7,LR}
216AA6:  ADD             R7, SP, #8
216AA8:  VMOV            S0, R1
216AAC:  MOV             R4, R0
216AAE:  MOVS            R0, #0
216AB0:  VCMPE.F32       S0, #0.0
216AB4:  VMRS            APSR_nzcv, FPSCR
216AB8:  BLT             locret_216AD8
216ABA:  VLDR            S2, =3.1416
216ABE:  VCMPE.F32       S0, S2
216AC2:  VMRS            APSR_nzcv, FPSCR
216AC6:  IT GT
216AC8:  POPGT           {R4,R6,R7,PC}
216ACA:  MOV             R0, R1; x
216ACC:  BLX             cosf
216AD0:  EOR.W           R0, R0, #0x80000000
216AD4:  STR             R0, [R4,#0x28]
216AD6:  MOV             R0, R4
216AD8:  POP             {R4,R6,R7,PC}
