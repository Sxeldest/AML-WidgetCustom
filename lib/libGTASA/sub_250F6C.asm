; =========================================================
; Game Engine Function: sub_250F6C
; Address            : 0x250F6C - 0x2510B6
; =========================================================

250F6C:  PUSH            {R4-R7,LR}
250F6E:  ADD             R7, SP, #0xC
250F70:  PUSH.W          {R8-R10}
250F74:  VPUSH           {D8-D10}
250F78:  SUB             SP, SP, #8
250F7A:  MOV             R8, R1
250F7C:  VLDR            S2, =31416.0
250F80:  VLDR            S0, [R8,#0x10]
250F84:  MOV             R6, R2
250F86:  MOV             R5, R0
250F88:  VCVT.F32.U32    S0, S0
250F8C:  VLDR            S4, [R6,#0x70]
250F90:  VDIV.F32        S2, S2, S0
250F94:  VMUL.F32        S4, S4, S0
250F98:  VMOV            R0, S2; x
250F9C:  VCVT.S32.F32    S2, S4
250FA0:  VMOV            R1, S2
250FA4:  ADDS            R4, R1, #1
250FA6:  STR             R4, [R5,#0x18]
250FA8:  VLDR            S2, [R6,#0x74]
250FAC:  VMUL.F32        S0, S2, S0
250FB0:  VCVT.S32.F32    S18, S0
250FB4:  BLX             cosf
250FB8:  VMOV            R1, S18
250FBC:  VLDR            S2, =0.9999
250FC0:  VMOV.F32        S16, #1.0
250FC4:  ADD             R1, R4
250FC6:  STR             R1, [R5,#0x1C]
250FC8:  LDR             R1, [R6,#0x7C]
250FCA:  VLDR            S18, [R6,#0x80]
250FCE:  STR             R1, [R5,#0x6C]
250FD0:  VLDR            S0, [R6,#0x78]
250FD4:  VSUB.F32        S0, S16, S0
250FD8:  VCMPE.F32       S0, S2
250FDC:  VMRS            APSR_nzcv, FPSCR
250FE0:  BGE             loc_251028
250FE2:  VMOV            S2, R0
250FE6:  VLDR            S6, =0.001
250FEA:  VMUL.F32        S4, S2, S2
250FEE:  VMAX.F32        D0, D0, D3
250FF2:  VSUB.F32        S8, S16, S2
250FF6:  VADD.F32        S6, S0, S0
250FFA:  VMUL.F32        S10, S0, S0
250FFE:  VSUB.F32        S4, S16, S4
251002:  VMUL.F32        S2, S2, S0
251006:  VSUB.F32        S0, S16, S0
25100A:  VMUL.F32        S6, S8, S6
25100E:  VMUL.F32        S4, S4, S10
251012:  VSUB.F32        S2, S16, S2
251016:  VSUB.F32        S4, S6, S4
25101A:  VSQRT.F32       S4, S4
25101E:  VSUB.F32        S2, S2, S4
251022:  VDIV.F32        S0, S2, S0
251026:  B               loc_25102C
251028:  VLDR            S0, =0.0
25102C:  VMOV            R10, S18
251030:  ADD.W           R9, R5, #0x48 ; 'H'
251034:  VMOV.I32        Q8, #0
251038:  ADD.W           R0, R5, #0x34 ; '4'
25103C:  VSTR            S0, [R5,#0x70]
251040:  ADD.W           R4, R5, #0x24 ; '$'
251044:  VLDR            S20, [R6,#0xB8]
251048:  MOVS            R1, #0; x
25104A:  VST1.32         {D16-D17}, [R9]
25104E:  VST1.32         {D16-D17}, [R0]
251052:  MOVS            R0, #0
251054:  VST1.32         {D16-D17}, [R4]
251058:  STR             R0, [R5,#0x44]
25105A:  STRD.W          R0, R0, [R5,#0x58]
25105E:  STRD.W          R0, R0, [R5,#0x60]
251062:  STR             R0, [R5,#0x68]
251064:  EOR.W           R0, R10, #0x80000000; y
251068:  BLX             atan2f
25106C:  VABS.F32        S0, S18
251070:  VLDR            S2, =3.1416
251074:  VMOV            R5, S20
251078:  MOV             R1, R0
25107A:  MOV             R0, R8
25107C:  STR             R4, [SP,#0x38+var_38]
25107E:  VSUB.F32        S0, S16, S0
251082:  VMUL.F32        S0, S0, S2
251086:  VMOV            R6, S0
25108A:  MOV             R3, R5
25108C:  MOV             R2, R6
25108E:  BLX             j_ComputeAngleGains
251092:  MOV             R0, R10; y
251094:  MOVS            R1, #0; x
251096:  BLX             atan2f
25109A:  MOV             R1, R0
25109C:  MOV             R0, R8
25109E:  MOV             R2, R6
2510A0:  MOV             R3, R5
2510A2:  STR.W           R9, [SP,#0x38+var_38]
2510A6:  BLX             j_ComputeAngleGains
2510AA:  ADD             SP, SP, #8
2510AC:  VPOP            {D8-D10}
2510B0:  POP.W           {R8-R10}
2510B4:  POP             {R4-R7,PC}
