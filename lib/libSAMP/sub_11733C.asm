; =========================================================
; Game Engine Function: sub_11733C
; Address            : 0x11733C - 0x1173CC
; =========================================================

11733C:  ADD.W           R3, R0, #0x48 ; 'H'
117340:  MOV.W           R12, #4
117344:  VLD1.32         {D16-D17}, [R3],R12
117348:  MOV             R2, R1
11734A:  VST1.32         {D16-D17}, [R2],R12
11734E:  VLDR            S0, [R0,#0x48]
117352:  VLDR            S2, [R0,#0x50]
117356:  VLDR            S4, [R0,#0x54]
11735A:  VSUB.F32        S0, S2, S0
11735E:  VLDR            S2, [R3]
117362:  VMOV.F64        D17, #0.25
117366:  VSUB.F32        S2, S2, S4
11736A:  VLDR            S4, [R1,#8]
11736E:  VLDR            S6, [R1,#0xC]
117372:  VCVT.F64.F32    D16, S0
117376:  VCVT.F64.F32    D18, S2
11737A:  VMUL.F64        D16, D16, D17
11737E:  VMUL.F64        D17, D18, D17
117382:  VLDR            S0, [R1]
117386:  VLDR            S2, [R2]
11738A:  VCVT.F64.F32    D19, S0
11738E:  VCVT.F64.F32    D18, S2
117392:  VCVT.F64.F32    D20, S6
117396:  VCVT.F64.F32    D21, S4
11739A:  VADD.F64        D19, D16, D19
11739E:  VSUB.F64        D18, D18, D17
1173A2:  VADD.F64        D17, D17, D20
1173A6:  VSUB.F64        D16, D21, D16
1173AA:  VCVT.F32.F64    S0, D19
1173AE:  VCVT.F32.F64    S2, D18
1173B2:  VCVT.F32.F64    S4, D17
1173B6:  VCVT.F32.F64    S6, D16
1173BA:  VSTR            S0, [R1]
1173BE:  VSTR            S2, [R2]
1173C2:  VSTR            S6, [R1,#8]
1173C6:  VSTR            S4, [R1,#0xC]
1173CA:  BX              LR
