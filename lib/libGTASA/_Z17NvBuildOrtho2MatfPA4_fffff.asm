; =========================================================
; Game Engine Function: _Z17NvBuildOrtho2MatfPA4_fffff
; Address            : 0x2791FC - 0x27926A
; =========================================================

2791FC:  VMOV            S2, R2
279200:  VLDR            S0, [SP,#arg_0]
279204:  VMOV            S6, R1
279208:  MOVS            R1, #0
27920A:  VMOV            S4, R3
27920E:  MOV.W           R2, #0x3F800000
279212:  VADD.F32        S10, S6, S2
279216:  STRD.W          R2, R1, [R0,#0x28]
27921A:  VADD.F32        S8, S4, S0
27921E:  STRD.W          R1, R2, [R0,#0x38]
279222:  VSUB.F32        S2, S2, S6
279226:  ADDS            R1, R0, #4
279228:  VSUB.F32        S0, S0, S4
27922C:  VMOV.F32        S12, #2.0
279230:  VMOV.I32        Q8, #0
279234:  VNEG.F32        S6, S10
279238:  VNEG.F32        S4, S8
27923C:  VST1.32         {D16-D17}, [R1]
279240:  ADD.W           R1, R0, #0x18
279244:  VDIV.F32        S8, S12, S2
279248:  VDIV.F32        S10, S12, S0
27924C:  VDIV.F32        S0, S4, S0
279250:  VDIV.F32        S2, S6, S2
279254:  VST1.32         {D16-D17}, [R1]
279258:  VSTR            S8, [R0]
27925C:  VSTR            S10, [R0,#0x14]
279260:  VSTR            S2, [R0,#0x30]
279264:  VSTR            S0, [R0,#0x34]
279268:  BX              LR
