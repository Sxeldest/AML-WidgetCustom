; =========================================================
; Game Engine Function: _ZN7CCurves20CalcSpeedScaleFactorERK7CVectorS2_ffff
; Address            : 0x302F70 - 0x3030FE
; =========================================================

302F70:  PUSH            {R4,R5,R7,LR}
302F72:  ADD             R7, SP, #8
302F74:  VPUSH           {D8-D11}; float
302F78:  SUB             SP, SP, #8; float
302F7A:  VLDR            S20, [R7,#arg_0]
302F7E:  VMOV            S18, R2
302F82:  VLDR            S22, [R7,#arg_4]
302F86:  VMOV            S16, R3
302F8A:  VMUL.F32        S2, S18, S20
302F8E:  MOV             R5, R1
302F90:  VMUL.F32        S0, S16, S22
302F94:  MOV             R4, R0
302F96:  VADD.F32        S0, S2, S0
302F9A:  VCMPE.F32       S0, #0.0
302F9E:  VMRS            APSR_nzcv, FPSCR
302FA2:  BLE             loc_303004
302FA4:  VLDR            S2, =0.7
302FA8:  VCMPE.F32       S0, S2
302FAC:  VMRS            APSR_nzcv, FPSCR
302FB0:  BLE             loc_30300A
302FB2:  VMOV            R2, S20; float
302FB6:  LDRD.W          R0, R1, [R5]; float
302FBA:  VMOV            R3, S22; float
302FBE:  VLDR            S0, [R4]
302FC2:  VLDR            S2, [R4,#4]
302FC6:  VSTR            S0, [SP,#0x30+var_30]
302FCA:  VSTR            S2, [SP,#0x30+var_2C]
302FCE:  BLX             j__ZN10CCollision24DistToMathematicalLine2DEffffff; CCollision::DistToMathematicalLine2D(float,float,float,float,float,float)
302FD2:  VLDR            S0, [R5]
302FD6:  VLDR            S4, [R4]
302FDA:  VLDR            S2, [R5,#4]
302FDE:  VLDR            S6, [R4,#4]
302FE2:  VSUB.F32        S0, S4, S0
302FE6:  VSUB.F32        S2, S6, S2
302FEA:  VMUL.F32        S0, S0, S0
302FEE:  VMUL.F32        S2, S2, S2
302FF2:  VADD.F32        S0, S0, S2
302FF6:  VMOV            S2, R0
302FFA:  VSQRT.F32       S0, S0
302FFE:  VDIV.F32        S0, S2, S0
303002:  B               loc_30301A
303004:  VLDR            S0, =0.33333
303008:  B               loc_303022
30300A:  VLDR            S2, =-0.7
30300E:  VDIV.F32        S0, S0, S2
303012:  VMOV.F32        S2, #1.0
303016:  VADD.F32        S0, S0, S2
30301A:  VLDR            S2, =0.33333
30301E:  VMUL.F32        S0, S0, S2
303022:  VMUL.F32        S2, S16, S20
303026:  VMUL.F32        S4, S18, S22
30302A:  VSUB.F32        S12, S4, S2
30302E:  VCMP.F32        S12, #0.0
303032:  VMRS            APSR_nzcv, FPSCR
303036:  BNE             loc_303076
303038:  VLDR            S2, [R5]
30303C:  VLDR            S4, [R5,#4]
303040:  VLDR            S6, [R4]
303044:  VLDR            S8, [R4,#4]
303048:  VSUB.F32        S4, S8, S4
30304C:  VSUB.F32        S2, S6, S2
303050:  VMUL.F32        S4, S4, S4
303054:  VMUL.F32        S2, S2, S2
303058:  VADD.F32        S2, S2, S4
30305C:  VMOV.F32        S4, #1.0
303060:  VSQRT.F32       S2, S2
303064:  VSUB.F32        S0, S4, S0
303068:  VDIV.F32        S0, S2, S0
30306C:  VLDR            S2, =0.0
303070:  VMOV.F32        S4, S2
303074:  B               loc_3030EA
303076:  VLDR            S2, [R5]
30307A:  VLDR            S6, [R4]
30307E:  VLDR            S4, [R5,#4]
303082:  VLDR            S8, [R4,#4]
303086:  VSUB.F32        S14, S6, S2
30308A:  VSUB.F32        S10, S8, S4
30308E:  VMUL.F32        S14, S14, S22
303092:  VMUL.F32        S10, S10, S20
303096:  VSUB.F32        S10, S14, S10
30309A:  VNEG.F32        S10, S10
30309E:  VDIV.F32        S10, S10, S12
3030A2:  VCMPE.F32       S10, #0.0
3030A6:  VMRS            APSR_nzcv, FPSCR
3030AA:  BLE             loc_303048
3030AC:  VSUB.F32        S14, S4, S8
3030B0:  VSUB.F32        S1, S2, S6
3030B4:  VMUL.F32        S14, S14, S18
3030B8:  VMUL.F32        S1, S1, S16
3030BC:  VSUB.F32        S14, S1, S14
3030C0:  VNEG.F32        S14, S14
3030C4:  VDIV.F32        S12, S14, S12
3030C8:  VCMPE.F32       S12, #0.0
3030CC:  VMRS            APSR_nzcv, FPSCR
3030D0:  BLE             loc_303048
3030D2:  VMOV.F32        S0, #5.0
3030D6:  VMIN.F32        D16, D5, D6
3030DA:  VMIN.F32        D0, D16, D0
3030DE:  VSUB.F32        S2, S12, S0
3030E2:  VSUB.F32        S4, S10, S0
3030E6:  VADD.F32        S0, S0, S0
3030EA:  VADD.F32        S2, S2, S4
3030EE:  VADD.F32        S0, S0, S2
3030F2:  VMOV            R0, S0
3030F6:  ADD             SP, SP, #8
3030F8:  VPOP            {D8-D11}
3030FC:  POP             {R4,R5,R7,PC}
