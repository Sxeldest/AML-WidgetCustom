; =========================================================
; Game Engine Function: png_reciprocal2
; Address            : 0x1F0FC0 - 0x1F102A
; =========================================================

1F0FC0:  CMP             R0, #0
1F0FC2:  IT NE
1F0FC4:  CMPNE           R1, #0
1F0FC6:  BEQ             loc_1F1026
1F0FC8:  PUSH            {R7,LR}
1F0FCA:  MOV             R7, SP
1F0FCC:  VMOV            S0, R0
1F0FD0:  VLDR            D17, =1.0e15
1F0FD4:  VCVT.F64.S32    D16, S0
1F0FD8:  VDIV.F64        D16, D17, D16
1F0FDC:  VMOV            S0, R1
1F0FE0:  VCVT.F64.S32    D17, S0
1F0FE4:  VDIV.F64        D16, D16, D17
1F0FE8:  VMOV.F64        D17, #0.5
1F0FEC:  VADD.F64        D16, D16, D17
1F0FF0:  VMOV            R0, R1, D16; x
1F0FF4:  BLX             floor
1F0FF8:  VMOV            D16, R0, R1
1F0FFC:  VLDR            D17, =-2.14748365e9
1F1000:  VCVT.S32.F64    S0, D16
1F1004:  VCMPE.F64       D16, D17
1F1008:  VMRS            APSR_nzcv, FPSCR
1F100C:  POP.W           {R7,LR}
1F1010:  BLT             loc_1F1026
1F1012:  VLDR            D17, =2.14748365e9
1F1016:  VCMPE.F64       D16, D17
1F101A:  VMRS            APSR_nzcv, FPSCR
1F101E:  ITT LE
1F1020:  VMOVLE          R0, S0
1F1024:  BXLE            LR
1F1026:  MOVS            R0, #0
1F1028:  BX              LR
