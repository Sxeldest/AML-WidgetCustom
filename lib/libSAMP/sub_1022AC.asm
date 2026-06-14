; =========================================================
; Game Engine Function: sub_1022AC
; Address            : 0x1022AC - 0x10238A
; =========================================================

1022AC:  PUSH            {R4-R7,LR}
1022AE:  ADD             R7, SP, #0xC
1022B0:  PUSH.W          {R8}
1022B4:  VPUSH           {D8}
1022B8:  SUB             SP, SP, #0x18
1022BA:  VLDR            S16, =0.017453
1022BE:  VMOV            S0, R1
1022C2:  MOV             R4, R0
1022C4:  MOV             R6, R2
1022C6:  VMUL.F32        S0, S0, S16
1022CA:  MOV             R5, R1
1022CC:  ADD             R1, SP, #0x30+var_1C
1022CE:  ADD             R2, SP, #0x30+var_20
1022D0:  MOV             R8, R3
1022D2:  VMOV            R0, S0
1022D6:  BLX             sincosf
1022DA:  VMOV            S0, R6
1022DE:  ADD             R1, SP, #0x30+var_24
1022E0:  ADD             R2, SP, #0x30+var_28
1022E2:  VMUL.F32        S0, S0, S16
1022E6:  VMOV            R0, S0
1022EA:  BLX             sincosf
1022EE:  VMOV            S0, R8
1022F2:  ADD             R1, SP, #0x30+var_2C
1022F4:  MOV             R2, SP
1022F6:  VMUL.F32        S0, S0, S16
1022FA:  VMOV            R0, S0
1022FE:  BLX             sincosf
102302:  VLDR            S0, [SP,#0x30+var_1C]
102306:  ADD.W           R0, R4, #0x2B4
10230A:  VLDR            S2, [SP,#0x30+var_2C]
10230E:  VLDR            S4, [SP,#0x30+var_30]
102312:  VLDR            S6, [SP,#0x30+var_24]
102316:  VMUL.F32        S8, S2, S0
10231A:  VLDR            S10, [SP,#0x30+var_20]
10231E:  VMUL.F32        S12, S4, S0
102322:  VLDR            S14, [SP,#0x30+var_28]
102326:  VMUL.F32        S1, S2, S6
10232A:  VMUL.F32        S3, S4, S6
10232E:  STM.W           R0, {R5,R6,R8}
102332:  VMUL.F32        S7, S2, S14
102336:  VMUL.F32        S9, S4, S10
10233A:  VSTR            S0, [R4,#0x2E8]
10233E:  VMUL.F32        S4, S4, S14
102342:  VMUL.F32        S5, S14, S10
102346:  VNMUL.F32       S2, S2, S10
10234A:  VNMUL.F32       S10, S6, S10
10234E:  VMLS.F32        S1, S14, S12
102352:  VMLA.F32        S3, S8, S14
102356:  VMLA.F32        S7, S12, S6
10235A:  VSTR            S9, [R4,#0x2E4]
10235E:  VMLS.F32        S4, S6, S8
102362:  VSTR            S5, [R4,#0x2F8]
102366:  VSTR            S2, [R4,#0x2E0]
10236A:  VSTR            S10, [R4,#0x2D8]
10236E:  VSTR            S1, [R4,#0x2F4]
102372:  VSTR            S3, [R4,#0x2F0]
102376:  VSTR            S7, [R4,#0x2D4]
10237A:  VSTR            S4, [R4,#0x2D0]
10237E:  ADD             SP, SP, #0x18
102380:  VPOP            {D8}
102384:  POP.W           {R8}
102388:  POP             {R4-R7,PC}
