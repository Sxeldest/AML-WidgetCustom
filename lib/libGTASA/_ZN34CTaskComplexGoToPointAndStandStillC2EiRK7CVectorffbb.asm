; =========================================================
; Game Engine Function: _ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb
; Address            : 0x51D2E4 - 0x51D3BE
; =========================================================

51D2E4:  PUSH            {R4-R7,LR}
51D2E6:  ADD             R7, SP, #0xC
51D2E8:  PUSH.W          {R8}
51D2EC:  MOV             R6, R3
51D2EE:  MOV             R5, R2
51D2F0:  MOV             R8, R1
51D2F2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51D2F6:  LDR             R1, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x51D302)
51D2F8:  LDR             R2, [R7,#arg_8]
51D2FA:  STR.W           R8, [R0,#0xC]
51D2FE:  ADD             R1, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
51D300:  LDR             R3, [R7,#arg_4]
51D302:  LDRB.W          R4, [R0,#0x24]
51D306:  ORR.W           R2, R3, R2,LSL#1
51D30A:  LDR             R3, [R1]; `vtable for'CTaskComplexGoToPointAndStandStill ...
51D30C:  BIC.W           R1, R4, #0x1B
51D310:  VLDR            S2, [R0,#0x10]
51D314:  ORRS            R1, R2
51D316:  STRB.W          R1, [R0,#0x24]
51D31A:  ADD.W           R2, R3, #8
51D31E:  STR             R2, [R0]
51D320:  VLDR            S4, [R5]
51D324:  VLDR            S0, [R7,#arg_0]
51D328:  VCMP.F32        S2, S4
51D32C:  VMRS            APSR_nzcv, FPSCR
51D330:  BNE             loc_51D364
51D332:  VLDR            S2, [R5,#4]
51D336:  VLDR            S4, [R0,#0x14]
51D33A:  VCMP.F32        S4, S2
51D33E:  VMRS            APSR_nzcv, FPSCR
51D342:  BNE             loc_51D364
51D344:  VLDR            S2, [R5,#8]
51D348:  VLDR            S4, [R0,#0x18]
51D34C:  VCMP.F32        S4, S2
51D350:  VMRS            APSR_nzcv, FPSCR
51D354:  BNE             loc_51D364
51D356:  VLDR            S2, [R0,#0x20]
51D35A:  VCMP.F32        S2, S0
51D35E:  VMRS            APSR_nzcv, FPSCR
51D362:  BEQ             loc_51D384
51D364:  ORR.W           R1, R1, #4
51D368:  VMOV            S2, R6
51D36C:  VLDR            D16, [R5]
51D370:  LDR             R2, [R5,#8]
51D372:  STR             R2, [R0,#0x18]
51D374:  VSTR            S2, [R0,#0x1C]
51D378:  VSTR            S0, [R0,#0x20]
51D37C:  STRB.W          R1, [R0,#0x24]
51D380:  VSTR            D16, [R0,#0x10]
51D384:  LSLS            R2, R1, #0x1E
51D386:  BPL             loc_51D3B8
51D388:  CMP.W           R8, #5
51D38C:  VLDR            S0, [R0,#0x1C]
51D390:  AND.W           R1, R1, #0xFE
51D394:  STRB.W          R1, [R0,#0x24]
51D398:  ITE LT
51D39A:  VMOVLT.F32      S2, #0.5
51D39E:  VMOVGE.F32      S2, #1.0
51D3A2:  MOVS            R1, #0
51D3A4:  VCMPE.F32       S0, S2
51D3A8:  VMRS            APSR_nzcv, FPSCR
51D3AC:  IT GE
51D3AE:  VMOVGE.F32      S2, S0
51D3B2:  STR             R1, [R0,#0x20]
51D3B4:  VSTR            S2, [R0,#0x1C]
51D3B8:  POP.W           {R8}
51D3BC:  POP             {R4-R7,PC}
