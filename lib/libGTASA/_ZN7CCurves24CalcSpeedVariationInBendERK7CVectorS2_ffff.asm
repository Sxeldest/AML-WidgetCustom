; =========================================================
; Game Engine Function: _ZN7CCurves24CalcSpeedVariationInBendERK7CVectorS2_ffff
; Address            : 0x302EAC - 0x302F62
; =========================================================

302EAC:  PUSH            {R4,R5,R7,LR}; float
302EAE:  ADD             R7, SP, #8
302EB0:  SUB             SP, SP, #8; float
302EB2:  VLDR            S0, [R7,#arg_0]
302EB6:  VMOV            S6, R2
302EBA:  VLDR            S2, [R7,#arg_4]
302EBE:  VMOV            S4, R3
302EC2:  VMUL.F32        S6, S6, S0
302EC6:  MOV             R5, R1
302EC8:  VMUL.F32        S4, S4, S2
302ECC:  MOV             R4, R0
302ECE:  VADD.F32        S4, S6, S4
302ED2:  VCMPE.F32       S4, #0.0
302ED6:  VMRS            APSR_nzcv, FPSCR
302EDA:  BLE             loc_302F3C
302EDC:  VLDR            S6, =0.7
302EE0:  VCMPE.F32       S4, S6
302EE4:  VMRS            APSR_nzcv, FPSCR
302EE8:  BLE             loc_302F42
302EEA:  VMOV            R2, S0; float
302EEE:  LDRD.W          R0, R1, [R5]; float
302EF2:  VMOV            R3, S2; float
302EF6:  VLDR            S0, [R4]
302EFA:  VLDR            S2, [R4,#4]
302EFE:  VSTR            S0, [SP,#0x10+var_10]
302F02:  VSTR            S2, [SP,#0x10+var_C]
302F06:  BLX             j__ZN10CCollision24DistToMathematicalLine2DEffffff; CCollision::DistToMathematicalLine2D(float,float,float,float,float,float)
302F0A:  VLDR            S0, [R5]
302F0E:  VLDR            S4, [R4]
302F12:  VLDR            S2, [R5,#4]
302F16:  VLDR            S6, [R4,#4]
302F1A:  VSUB.F32        S0, S4, S0
302F1E:  VSUB.F32        S2, S6, S2
302F22:  VMUL.F32        S0, S0, S0
302F26:  VMUL.F32        S2, S2, S2
302F2A:  VADD.F32        S0, S0, S2
302F2E:  VMOV            S2, R0
302F32:  VSQRT.F32       S0, S0
302F36:  VDIV.F32        S0, S2, S0
302F3A:  B               loc_302F52
302F3C:  VLDR            S0, =0.33333
302F40:  B               loc_302F5A
302F42:  VLDR            S0, =-0.7
302F46:  VMOV.F32        S2, #1.0
302F4A:  VDIV.F32        S0, S4, S0
302F4E:  VADD.F32        S0, S0, S2
302F52:  VLDR            S2, =0.33333
302F56:  VMUL.F32        S0, S0, S2
302F5A:  VMOV            R0, S0
302F5E:  ADD             SP, SP, #8
302F60:  POP             {R4,R5,R7,PC}
