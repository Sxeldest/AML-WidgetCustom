; =========================================================
; Game Engine Function: sub_1173D0
; Address            : 0x1173D0 - 0x117462
; =========================================================

1173D0:  PUSH            {R7,LR}
1173D2:  MOV             R7, SP
1173D4:  ADD.W           R3, R0, #0x48 ; 'H'
1173D8:  MOV.W           LR, #4
1173DC:  VLD1.32         {D16-D17}, [R3],LR
1173E0:  MOV             R12, R1
1173E2:  VST1.32         {D16-D17}, [R12],LR
1173E6:  VLDR            S2, [R0,#0x50]
1173EA:  VLDR            S0, [R0,#0x48]
1173EE:  VLDR            S4, [R0,#0x54]
1173F2:  MOVS            R0, #0
1173F4:  VLDR            S8, [R3]
1173F8:  VSUB.F32        S6, S2, S0
1173FC:  VLDR            D17, =0.2
117400:  VSUB.F32        S4, S8, S4
117404:  VLDR            D19, =-0.085
117408:  VCVT.F64.F32    D21, S2
11740C:  VCVT.F64.F32    D16, S6
117410:  VCVT.F64.F32    D18, S4
117414:  VMUL.F64        D16, D16, D17
117418:  VMUL.F64        D18, D18, D19
11741C:  VLDR            S4, [R12]
117420:  VLDR            S6, [R1,#0xC]
117424:  VCVT.F64.F32    D17, S0
117428:  VCVT.F64.F32    D19, S4
11742C:  VCVT.F64.F32    D20, S6
117430:  VSUB.F64        D17, D17, D16
117434:  VADD.F64        D19, D18, D19
117438:  VADD.F64        D18, D18, D20
11743C:  VADD.F64        D16, D16, D21
117440:  VCVT.F32.F64    S0, D17
117444:  VCVT.F32.F64    S2, D19
117448:  VCVT.F32.F64    S4, D18
11744C:  VCVT.F32.F64    S6, D16
117450:  VSTR            S0, [R2]
117454:  VSTR            S2, [R12]
117458:  VSTR            S4, [R1,#0xC]
11745C:  VSTR            S6, [R2,#8]
117460:  POP             {R7,PC}
