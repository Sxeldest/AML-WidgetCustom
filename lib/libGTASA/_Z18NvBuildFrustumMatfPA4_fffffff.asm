; =========================================================
; Game Engine Function: _Z18NvBuildFrustumMatfPA4_fffffff
; Address            : 0x27916C - 0x2791FC
; =========================================================

27916C:  VLDR            S0, [SP,#arg_8]
279170:  VMOV            S4, R1
279174:  VLDR            S2, [SP,#arg_4]
279178:  VMOV            S6, R2
27917C:  VADD.F32        S12, S0, S0
279180:  VLDR            S14, [SP,#arg_0]
279184:  VADD.F32        S8, S2, S0
279188:  MOVS            R2, #0
27918A:  VMOV            S10, R3
27918E:  MOVS            R1, #0
279190:  VSUB.F32        S3, S6, S4
279194:  MOVT            R2, #0xBF80
279198:  VADD.F32        S4, S4, S6
27919C:  STRD.W          R1, R1, [R0,#0x18]
2791A0:  VSUB.F32        S5, S14, S10
2791A4:  STRD.W          R2, R1, [R0,#0x2C]
2791A8:  VADD.F32        S10, S10, S14
2791AC:  STR             R1, [R0,#0x34]
2791AE:  VADD.F32        S1, S2, S2
2791B2:  STR             R1, [R0,#0x3C]
2791B4:  VSUB.F32        S0, S0, S2
2791B8:  ADDS            R1, R0, #4
2791BA:  VNEG.F32        S6, S8
2791BE:  VNMUL.F32       S2, S12, S2
2791C2:  VDIV.F32        S4, S4, S3
2791C6:  VDIV.F32        S6, S6, S0
2791CA:  VDIV.F32        S8, S1, S3
2791CE:  VDIV.F32        S12, S1, S5
2791D2:  VDIV.F32        S10, S10, S5
2791D6:  VDIV.F32        S0, S2, S0
2791DA:  VMOV.I32        Q8, #0
2791DE:  VST1.32         {D16-D17}, [R1]
2791E2:  VSTR            S8, [R0]
2791E6:  VSTR            S12, [R0,#0x14]
2791EA:  VSTR            S4, [R0,#0x20]
2791EE:  VSTR            S10, [R0,#0x24]
2791F2:  VSTR            S6, [R0,#0x28]
2791F6:  VSTR            S0, [R0,#0x38]
2791FA:  BX              LR
