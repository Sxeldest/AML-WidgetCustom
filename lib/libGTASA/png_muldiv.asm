; =========================================================
; Game Engine Function: png_muldiv
; Address            : 0x1F02E8 - 0x1F0362
; =========================================================

1F02E8:  PUSH            {R4,R6,R7,LR}
1F02EA:  ADD             R7, SP, #8
1F02EC:  MOV             R4, R0
1F02EE:  CBZ             R3, loc_1F02FE
1F02F0:  CMP             R1, #0
1F02F2:  IT NE
1F02F4:  CMPNE           R2, #0
1F02F6:  BNE             loc_1F0302
1F02F8:  MOVS            R0, #0
1F02FA:  STR             R0, [R4]
1F02FC:  B               loc_1F035E
1F02FE:  MOVS            R0, #0
1F0300:  POP             {R4,R6,R7,PC}
1F0302:  VMOV            S0, R2
1F0306:  VCVT.F64.S32    D16, S0
1F030A:  VMOV            S0, R1
1F030E:  VCVT.F64.S32    D17, S0
1F0312:  VMUL.F64        D16, D17, D16
1F0316:  VMOV            S0, R3
1F031A:  VCVT.F64.S32    D17, S0
1F031E:  VDIV.F64        D16, D16, D17
1F0322:  VMOV.F64        D17, #0.5
1F0326:  VADD.F64        D16, D16, D17
1F032A:  VMOV            R0, R1, D16; x
1F032E:  BLX             floor
1F0332:  VLDR            D17, =2.14748365e9
1F0336:  VMOV            D16, R0, R1
1F033A:  MOVS            R0, #0
1F033C:  VCMPE.F64       D16, D17
1F0340:  VMRS            APSR_nzcv, FPSCR
1F0344:  BGT             locret_1F0360
1F0346:  VLDR            D17, =-2.14748365e9
1F034A:  VCMPE.F64       D16, D17
1F034E:  VMRS            APSR_nzcv, FPSCR
1F0352:  IT LT
1F0354:  POPLT           {R4,R6,R7,PC}
1F0356:  VCVT.S32.F64    S0, D16
1F035A:  VSTR            S0, [R4]
1F035E:  MOVS            R0, #1
1F0360:  POP             {R4,R6,R7,PC}
