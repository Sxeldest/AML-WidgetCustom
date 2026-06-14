; =========================================================
; Game Engine Function: sub_2602EE
; Address            : 0x2602EE - 0x260346
; =========================================================

2602EE:  VLDR            S0, [R2,#0x90]
2602F2:  VMOV.I32        Q8, #0
2602F6:  VLDR            S2, [R2,#0xB8]
2602FA:  MOVS            R3, #0
2602FC:  STR             R3, [R0,#0x30]
2602FE:  ADD.W           R3, R0, #0x20 ; ' '
260302:  VMUL.F32        S0, S2, S0
260306:  ADD.W           R12, R0, #0x10
26030A:  VST1.32         {D16-D17}, [R3]
26030E:  VST1.32         {D16-D17}, [R12]
260312:  LDR             R2, [R2]
260314:  CMP.W           R2, #0x9000
260318:  BEQ             loc_260340
26031A:  MOVW            R0, #0x9001
26031E:  CMP             R2, R0
260320:  IT NE
260322:  BXNE            LR
260324:  PUSH            {R7,LR}
260326:  MOV             R7, SP
260328:  SUB             SP, SP, #8
26032A:  VMOV            R3, S0
26032E:  MOV             R0, R1
260330:  MOVS            R1, #0
260332:  MOVS            R2, #0
260334:  STR.W           R12, [SP,#0x10+var_10]
260338:  BLX             j_ComputeAngleGains
26033C:  ADD             SP, SP, #8
26033E:  POP             {R7,PC}
260340:  VSTR            S0, [R0,#0x1C]
260344:  BX              LR
