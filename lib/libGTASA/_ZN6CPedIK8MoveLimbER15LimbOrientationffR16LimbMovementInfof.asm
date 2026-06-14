; =========================================================
; Game Engine Function: _ZN6CPedIK8MoveLimbER15LimbOrientationffR16LimbMovementInfof
; Address            : 0x4B8FC8 - 0x4B9048
; =========================================================

4B8FC8:  VLDR            S0, [SP,#arg_4]
4B8FCC:  VMOV            S2, R3
4B8FD0:  VMOV            S4, R2
4B8FD4:  LDR             R0, [SP,#arg_0]
4B8FD6:  VMUL.F32        S2, S2, S0
4B8FDA:  VMUL.F32        S6, S4, S0
4B8FDE:  VSTR            S6, [R1]
4B8FE2:  VSTR            S2, [R1,#4]
4B8FE6:  VLDR            S4, [R0]
4B8FEA:  VCMPE.F32       S6, S4
4B8FEE:  VMRS            APSR_nzcv, FPSCR
4B8FF2:  BGT             loc_4B9002
4B8FF4:  VLDR            S4, [R0,#4]
4B8FF8:  VCMPE.F32       S6, S4
4B8FFC:  VMRS            APSR_nzcv, FPSCR
4B9000:  BGE             loc_4B900A
4B9002:  MOVS            R2, #0
4B9004:  VSTR            S4, [R1]
4B9008:  B               loc_4B900C
4B900A:  MOVS            R2, #1
4B900C:  VLDR            S4, [R0,#0xC]
4B9010:  VCMPE.F32       S2, S4
4B9014:  VMRS            APSR_nzcv, FPSCR
4B9018:  BGT             loc_4B9028
4B901A:  VLDR            S4, [R0,#0x10]
4B901E:  VCMPE.F32       S2, S4
4B9022:  VMRS            APSR_nzcv, FPSCR
4B9026:  BGE             loc_4B902E
4B9028:  MOVS            R2, #0
4B902A:  VSTR            S4, [R1,#4]
4B902E:  VLDR            S2, =0.9
4B9032:  CMP             R2, #0
4B9034:  MOV             R0, R2
4B9036:  VCMPE.F32       S0, S2
4B903A:  IT NE
4B903C:  MOVNE           R0, #2
4B903E:  VMRS            APSR_nzcv, FPSCR
4B9042:  IT LE
4B9044:  MOVLE           R0, R2
4B9046:  BX              LR
