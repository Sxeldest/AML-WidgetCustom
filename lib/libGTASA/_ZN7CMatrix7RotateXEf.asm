; =========================================================
; Game Engine Function: _ZN7CMatrix7RotateXEf
; Address            : 0x44F2FE - 0x44F3CE
; =========================================================

44F2FE:  PUSH            {R4-R7,LR}
44F300:  ADD             R7, SP, #0xC
44F302:  PUSH.W          {R11}
44F306:  VPUSH           {D8-D9}
44F30A:  MOV             R5, R1
44F30C:  MOV             R4, R0
44F30E:  MOV             R0, R5; x
44F310:  BLX             cosf
44F314:  MOV             R6, R0
44F316:  MOV             R0, R5; x
44F318:  BLX             sinf
44F31C:  VLDR            S0, [R4,#4]
44F320:  VMOV            S10, R6
44F324:  VLDR            S2, [R4,#8]
44F328:  VMOV            S8, R0
44F32C:  VLDR            S4, [R4,#0x14]
44F330:  VMUL.F32        S11, S10, S0
44F334:  VLDR            S6, [R4,#0x18]
44F338:  VMUL.F32        S1, S10, S2
44F33C:  VLDR            S3, [R4,#0x24]
44F340:  VMUL.F32        S2, S8, S2
44F344:  VLDR            S5, [R4,#0x28]
44F348:  VMUL.F32        S0, S8, S0
44F34C:  VLDR            S13, [R4,#0x34]
44F350:  VMUL.F32        S12, S8, S6
44F354:  VLDR            S15, [R4,#0x38]
44F358:  VMUL.F32        S14, S10, S4
44F35C:  VMUL.F32        S7, S8, S5
44F360:  VMUL.F32        S9, S10, S3
44F364:  VMUL.F32        S6, S10, S6
44F368:  VMUL.F32        S4, S8, S4
44F36C:  VMUL.F32        S5, S10, S5
44F370:  VMUL.F32        S18, S10, S13
44F374:  VMUL.F32        S3, S8, S3
44F378:  VMUL.F32        S16, S8, S15
44F37C:  VMUL.F32        S10, S10, S15
44F380:  VMUL.F32        S8, S8, S13
44F384:  VSUB.F32        S2, S11, S2
44F388:  VADD.F32        S0, S0, S1
44F38C:  VSUB.F32        S12, S14, S12
44F390:  VADD.F32        S4, S4, S6
44F394:  VSUB.F32        S6, S9, S7
44F398:  VADD.F32        S14, S3, S5
44F39C:  VSUB.F32        S1, S18, S16
44F3A0:  VADD.F32        S8, S8, S10
44F3A4:  VSTR            S2, [R4,#4]
44F3A8:  VSTR            S0, [R4,#8]
44F3AC:  VSTR            S12, [R4,#0x14]
44F3B0:  VSTR            S4, [R4,#0x18]
44F3B4:  VSTR            S6, [R4,#0x24]
44F3B8:  VSTR            S14, [R4,#0x28]
44F3BC:  VSTR            S1, [R4,#0x34]
44F3C0:  VSTR            S8, [R4,#0x38]
44F3C4:  VPOP            {D8-D9}
44F3C8:  POP.W           {R11}
44F3CC:  POP             {R4-R7,PC}
