; =========================================================
; Game Engine Function: sub_2512F8
; Address            : 0x2512F8 - 0x2513DC
; =========================================================

2512F8:  PUSH            {R4-R7,LR}
2512FA:  ADD             R7, SP, #0xC
2512FC:  PUSH.W          {R11}
251300:  MOV             R6, R2
251302:  MOV             R5, R0
251304:  LDR.W           R0, [R6,#0x8C]
251308:  MOV             R4, R1
25130A:  VLDR            S0, =65536.0
25130E:  CMP             R0, #2
251310:  IT LS
251312:  STRLS           R0, [R5,#0x10]
251314:  VLDR            S2, [R6,#0x84]
251318:  VLDR            S4, [R4,#0x10]
25131C:  VMUL.F32        S0, S2, S0
251320:  VCVT.F32.U32    S2, S4
251324:  VDIV.F32        S0, S0, S2
251328:  VCVT.S32.F32    S0, S0
25132C:  VLDR            S2, =6.2832
251330:  VMOV            R0, S0
251334:  CMP             R0, #0
251336:  IT EQ
251338:  MOVEQ           R0, #1
25133A:  STR             R0, [R5,#0x18]
25133C:  VLDR            S0, [R6,#0x88]
251340:  VLDR            S4, [R4,#0x10]
251344:  VMUL.F32        S0, S0, S2
251348:  VCVT.F32.U32    S2, S4
25134C:  VDIV.F32        S0, S0, S2
251350:  VMOV            R0, S0; x
251354:  BLX             cosf
251358:  VMOV.F32        S0, #2.0
25135C:  MOVS            R1, #0
25135E:  VMOV            S2, R0
251362:  VMOV.I32        Q8, #0
251366:  VSUB.F32        S0, S0, S2
25136A:  VMOV.F32        S2, #-1.0
25136E:  VMUL.F32        S4, S0, S0
251372:  VADD.F32        S2, S4, S2
251376:  VSQRT.F32       S2, S2
25137A:  VSUB.F32        S0, S0, S2
25137E:  VSTR            S0, [R5,#0x40]
251382:  LDR.W           R0, [R4,#0x128]
251386:  VMOV            S0, R0
25138A:  ADD.W           R0, R5, #0x2C ; ','
25138E:  VCVT.F32.U32    S0, S0
251392:  VLDR            S2, [R6,#0xB8]
251396:  VST1.32         {D16-D17}, [R0]
25139A:  ADD.W           R0, R5, #0x1C
25139E:  VST1.32         {D16-D17}, [R0]
2513A2:  STR             R1, [R5,#0x3C]
2513A4:  LDR.W           R1, [R4,#0x128]
2513A8:  CBZ             R1, loc_2513D6
2513AA:  VMOV.F32        S4, #1.0
2513AE:  ADD.W           R1, R4, #0xE0
2513B2:  MOVS            R2, #0
2513B4:  VDIV.F32        S0, S4, S0
2513B8:  VSQRT.F32       S0, S0
2513BC:  VMUL.F32        S0, S2, S0
2513C0:  LDR.W           R3, [R1,R2,LSL#2]
2513C4:  ADDS            R2, #1
2513C6:  ADD.W           R3, R0, R3,LSL#2
2513CA:  VSTR            S0, [R3]
2513CE:  LDR.W           R3, [R4,#0x128]
2513D2:  CMP             R2, R3
2513D4:  BCC             loc_2513C0
2513D6:  POP.W           {R11}
2513DA:  POP             {R4-R7,PC}
